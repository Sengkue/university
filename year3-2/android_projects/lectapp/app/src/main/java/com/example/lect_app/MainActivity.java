package com.example.lect_app;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.Spinner;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Spinner spn,spn1;
    EditText txtname,txtsurname;
    RadioButton rmale,frmale;
    Button btnOK;
    String [] arr = {"Camera","mobile phone","Computer"};
    String arr1 [][] = {new String[]{"canon","Nikon","Casio","Asus"},new String[]{"vivo","Oppo","Viso","iphone"},new String[]{"Hp","Dell","Asus","Acer"}};
    ArrayAdapter<String> adp = null;
    String age="";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        spn = findViewById(R.id.spn);
        spn1 = findViewById(R.id.spn1);
        txtname = findViewById(R.id.txtname);
        txtsurname = findViewById(R.id.txtsurname);
        rmale = findViewById(R.id.rmale);
        frmale = findViewById(R.id.frmale);
        btnOK = findViewById(R.id.btnOK);
        btnOK.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent =new Intent(MainActivity.this,showactivityl.class);
                intent.putExtra("name",txtname.getText().toString());
                intent.putExtra("surname",txtsurname.getText().toString());
                intent.putExtra("age",age);
                String sex="";
                if(rmale.isChecked()){
                    sex=rmale.getText().toString();
                }else{
                    sex=frmale.getText().toString();
                }
                intent.putExtra("sex",sex);
                startActivity(intent);
//                String str = " \n Name : "+txtname.getText().toString();
//                str += "\n Surname : "+txtsurname.getText().toString();
//                str += "\n Age :" +age;
//                String sex="";
//                if(rmale.isChecked()){
//                    sex = rmale.getText().toString();
//                } else {
//                    sex = frmale.getText().toString();
//                }
//                str +="\n Gender :" +sex;
//                Toast.makeText(getApplicationContext(),str,Toast.LENGTH_LONG).show();

            }
        });
        adp=new ArrayAdapter<String>(getApplicationContext(), android.R.layout.simple_spinner_dropdown_item,arr);
        spn1.setAdapter(adp);
        spn1.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parant, View view, int i, long l) {
                age = parant.getItemAtPosition(i).toString();
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });

    }
}