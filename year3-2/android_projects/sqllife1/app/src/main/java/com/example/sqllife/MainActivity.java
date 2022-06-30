package com.example.sqllife;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    Button btnOK, btnShow;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnOK =findViewById(R.id.btnSave);
        btnShow = findViewById(R.id.btnShowdata);
//        btnSelect.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                Intent intent =new Intent(MainActivity.this,SaveData_Activity.class);
//                MainActivity.this.finish();
//                startActivity(intent);
//
//            }
//        });
        btnOK.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent =new Intent(MainActivity.this,SaveData_Activity.class);
                MainActivity.this.finish();
                startActivity(intent);
            }
        });
        btnShow.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent =new Intent(MainActivity.this,activity_showdata.class);
                MainActivity.this.finish();
                startActivity(intent);
            }
        });
    }
}