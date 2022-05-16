package com.example.lad_from;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    EditText txtname, txtsurname, subname, subsurname, subtel;
    Button ok , show, save_ok, save_cancel;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        txtname = findViewById(R.id.txtname);
        txtsurname = findViewById(R.id.txtsurname);
        ok = findViewById(R.id.ok);
        show = findViewById(R.id.show);
        subname =findViewById(R.id.subname);
        subsurname = findViewById(R.id.subsurname);
        subtel = findViewById(R.id.subtel);
        save_ok = findViewById(R.id.save_ok);
        save_cancel = findViewById(R.id.save_cancel);

        show.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                AlertDialog.Builder alert = new AlertDialog.Builder(MainActivity.this);
                LayoutInflater inflat = LayoutInflater.from(MainActivity.this);
                View v = inflat.inflate(R.layout.layout_save, null);

                alert.setView(v);
                alert.show();


            }
        });

        ok.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String name,sur;
                name = txtname.getText().toString();
                sur = txtsurname.getText().toString();
                String str = "Name: "+name+"\n";
                       str +="surname: "+sur;

                AlertDialog.Builder art = new AlertDialog.Builder( MainActivity.this);
                art.setTitle("Confirm");
                art.setMessage(str);

                art.setPositiveButton("Ok", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        MainActivity.this.finish();
                    }
                });

                art.setNegativeButton("No", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Toast.makeText(getApplicationContext(), "byyy",Toast.LENGTH_SHORT).show();
                    }
                });
                art.show();
            }
        });
////        save_layout
//        save_ok.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                String name,sur, tel;
//                name = subname.getText().toString();
//                sur = subsurname.getText().toString();
//                tel = subtel.getText().toString();
//                String str = "Name: "+name+"\n";
//                       str +="surname: "+sur+"\n";
//                       str +="Phone: "+tel;
//
//
//                AlertDialog.Builder seng = new AlertDialog.Builder( MainActivity.this);
//                seng.setTitle("Confirm");
//                seng.setMessage(str);
//
//                seng.setPositiveButton("Ok", new DialogInterface.OnClickListener() {
//                    @Override
//                    public void onClick(DialogInterface dialog, int which) {
//                        MainActivity.this.finish();
//                    }
//                });
//
//                seng.setNegativeButton("No", new DialogInterface.OnClickListener() {
//                    @Override
//                    public void onClick(DialogInterface dialog, int which) {
//                        Toast.makeText(getApplicationContext(), "Bye",Toast.LENGTH_SHORT).show();
//                    }
//                });
//                seng.show();
//            }
//        });
    }
}