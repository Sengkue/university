package com.bmp.sqliteapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Save_Data extends AppCompatActivity {
    EditText txtid,txtname,txtprice,txtpage;
    Button btnInsert, btnCancel;
    myDatabase mydb =new myDatabase(this);
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_save_data);
        txtid =findViewById(R.id.txtbid);
        txtname =findViewById(R.id.txtbname);
        txtprice =findViewById(R.id.txtprice);
        txtpage =findViewById(R.id.txtpage);
        btnInsert =findViewById(R.id.btnInsert);
        btnCancel = findViewById(R.id.btnCancel);
        btnInsert.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                long r =mydb.InsertData(txtid.getText().toString(),
                                        txtname.getText().toString(),
                                        txtprice.getText().toString(),
                                        txtpage.getText().toString());
                if(r>0){

                    Toast.makeText(getApplicationContext(), "Save data complete", Toast.LENGTH_SHORT).show();


                            Intent intent =new Intent(Save_Data.this,MainActivity.class);
                            Save_Data.this.finish();
                            startActivity(intent);


                }


            }
        });

        btnCancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent =new Intent(Save_Data.this,MainActivity.class);
                Save_Data.this.finish();
                startActivity(intent);
            }
        });
    }
}