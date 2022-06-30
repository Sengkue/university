package com.example.sqllife;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class SaveData_Activity extends AppCompatActivity {

    EditText txtid, txtname, txtprice, txtpage;
    Button btnInsert, btnClear;
    myDatabase mydb = new myDatabase(this);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_save_data);

        txtname = findViewById(R.id.txtname);
        txtprice = findViewById(R.id.txtlname);
        txtpage = findViewById(R.id.txttel);
        btnInsert = findViewById(R.id.btnInsert);
        btnClear = findViewById(R.id.btnClear);

        btnInsert.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                long r=mydb.InsertData(txtid.getText().toString(),
                        txtname.getText().toString(),
                        txtprice.getText().toString(),
                        txtpage.getText().toString());
                if(r>0){
                    Toast.makeText(getApplicationContext(),"Save data complet", Toast.LENGTH_SHORT).show();
                    txtid.setText("");
                    txtname.setText("");
                    txtprice.setText("");
                    txtpage.setText("");
                    txtid.requestFocus();
                }
            }
        });
    }
}