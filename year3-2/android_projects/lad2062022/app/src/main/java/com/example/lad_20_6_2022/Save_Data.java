package com.example.lad_20_6_2022;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Save_Data extends AppCompatActivity {
    Button insert;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_save_data);
        insert = findViewById(R.id.btnInsert);

        setContentView(R.layout.activity_show_data);

        final Button button = (Button) findViewById(R.id.btnInsert);
        button.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(Save_Data.this, Show_Data.class);
                startActivity(intent);
            }
        });

    }
}