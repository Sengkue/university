package com.example.usespinner;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

public class MainActivity extends AppCompatActivity {
    String [] arr={"Computers","Camera","Mobile Phone"};
    String [][] itm={new String[]{"Acer","HP","Dell","Samsung"},
            new String[]{"Canon","Sonny","Casio","Nikon","Fuji","Panasonic"},
            new String[]{"iPhone","Samsung","VIVO","Huawei","OPPO"}
    };

    Spinner spn,spn1;
    ArrayAdapter<String> adp1=null;
    ArrayAdapter<String> adp2=null;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        spn =findViewById(R.id.spn);
        spn1 =findViewById(R.id.spn1);
        adp1 =new ArrayAdapter<String>(getApplicationContext(), android.R.layout.simple_spinner_dropdown_item,arr);
        spn1.setAdapter(adp1);

        spn1.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parant, View view, int i, long l) {
                adp1 =new ArrayAdapter<String>(getApplicationContext(), android.R.layout.simple_spinner_dropdown_item,itm[i]);
                spn1.setAdapter(adp2);
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {

            }
        });
    }
}