package com.bmp.mysqlapp;

import androidx.appcompat.app.AppCompatActivity;

import android.os.AsyncTask;
import android.os.Bundle;
import android.widget.TextView;
import java.sql.*;

public class MainActivity extends AppCompatActivity {
    TextView tv;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        tv= findViewById(R.id.tv);
        new mytask().execute("");

    }
    private class mytask extends AsyncTask<String,String,String>{
        String msg="";

        @Override
        protected void onPreExecute() {
            tv.setText("Please waiting to connection to DB");
        }

        @Override
        protected String doInBackground(String... strings) {
            try {
                Connection c;
                c = DBConnect.getConnect();
                if (c == null) {
                    msg = "Error in connection";
                } else {
                    msg = "Connected";
                }
            } catch (Exception e) {
                msg = "Error in connection";
            }

            
            return msg;
        }

        @Override
        protected void onPostExecute(String s) {
            tv.setText(s);
        }
    }
}