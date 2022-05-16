package com.example.lect_app;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

public class showactivity extends AppCompatActivity {
    TextView txtname,txtsurname,txtsex,txtage;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_showactivity);
        txtname = findViewById(R.id.txtname);
        txtsurname = findViewById(R.id.txtsurname);
        txtsex = findViewById(R.id.txtsex);
        txtage = findViewById(R.id.txtage);
        Bundle bun = getIntent().getExtras();
        txtname.setText(bun.get("name").toString());
        txtsurname.setText(bun.get("surname").toString());
        txtage.setText(bun.get("age").toString());
        txtsex.setText(bun.get("sex").toString());


    }
}