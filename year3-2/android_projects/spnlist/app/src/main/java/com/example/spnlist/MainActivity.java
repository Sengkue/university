package com.example.spnlist;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Spinner;

public class MainActivity extends AppCompatActivity {
    String [] itm = {"Computer","Camera","MObile Phone"};
    String [][] arr= { new String[]{"acer","HP","Dell"},
                      new String[]{"Sony","Canon","Casio","Nikon","Fuli"},
                        new String[]{"iPhone","Samsung","Huawei","Vivo"}};
    Spinner spn;
    ListView lst;
    ArrayAdapter<String> adptspn=null;
    ArrayAdapter<String> adptlst=null;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        spn =findViewById(R.id.spn);
        lst = findViewById(R.id.lst);

        lst.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {

            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });
        adptspn = new ArrayAdapter<String>(getApplication(), android.R.layout.simple_spinner_dropdown_item,itm);
        spn.setAdapter(adptspn);
        spn.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                adptlst = new ArrayAdapter<String>(getApplication(), android.R.layout.simple_list_item_1,arr[position]);

                lst .setAdapter(adptlst);
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });


    }
}