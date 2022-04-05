package com.example.form_register;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
EditText username, surename, tel, address;
Button ok , cancel;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initial();

        cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                username.setText("");
                surename.setText("");
                tel.setText("");
                address.setText("");
                username.requestFocus();

            }
        });
        ok.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String name, sur, phone, addr;
                name = username.getText().toString();
                sur = surename.getText().toString();
                phone = tel.getText().toString();
                addr = address.getText().toString();
                String str="Name: "+name+"\n";
                       str +="Surename: "+sur+"\n";
                       str +="Phone: "+phone+"\n";
                       str +="Address: "+addr+"\n";
                AlertDialog.Builder alert = new AlertDialog.Builder( MainActivity.this);
                alert.setTitle("Show data");
                alert.setMessage(str);

                alert.show();

            }
        });
    }

    private void initial(){
        username = findViewById(R.id.username);
        surename = findViewById(R.id.surenname);
        tel = findViewById(R.id.tel);
        address = findViewById(R.id.address);
        ok = findViewById(R.id.ok);
        cancel = findViewById(R.id.cancel);

    }
}