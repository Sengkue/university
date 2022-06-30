package com.example.sqllife;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class activity_showdata extends AppCompatActivity {
    Button btnOK;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_showdata);
                btnOK =findViewById(R.id.btnSave);
//                btnSelect.setOnClickListener(new View.OnClickListener() {
//                    @Override
//                    public void onClick(View v) {
//                        Intent intent =new Intent(activity_showdata.this,activity_showdata.class);
//                        activity_showdata.this.finish();
//                        startActivity(intent);
//
//                    }
//                });
                btnOK.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        Intent intent =new Intent(activity_showdata.this,MainActivity.class);
                        activity_showdata.this.finish();
                        startActivity(intent);
                    }
                });
            }
        }
