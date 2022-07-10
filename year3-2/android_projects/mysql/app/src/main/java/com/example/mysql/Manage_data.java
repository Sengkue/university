package com.example.mysql;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Manage_data extends AppCompatActivity {
     Button btnSave, btnDelete;
     EditText txtid, txtname,txtsurname,txttel;
     String fid="";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_manage_data);
//        txtid = findViewById(R.id.txtid);
        txtname = findViewById(R.id.txtname);
        txtsurname = findViewById(R.id.txtsurname);
        txttel = findViewById(R.id.txttel);
        btnSave = findViewById(R.id.btnSave);
        btnDelete = findViewById(R.id.btnDelete);

        Bundle bun = getIntent().getExtras();
        fid = bun.getString("fid");
        Toast.makeText(getApplicationContext(),fid,Toast.LENGTH_SHORT).show();
    }
}