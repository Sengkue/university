package com.example.apptoapp;

import android.os.Bundle;

import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;

import android.view.View;

import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.example.apptoapp.databinding.ActivityMainBinding;

import android.view.Menu;
import android.view.MenuItem;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.Spinner;

public class MainActivity extends AppCompatActivity {
    Spinner spn;
    EditText txtname, txtsurname;
    RadioButton rmale, frmale;
    Button btnOK;
    ArrayAdapter<String> adp;
    String [] age = {"1","2","3","4","5","6","7","8","9","10"};
    String strage="";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        spn = findViewById(R.id.spn);
        txtname = findViewById(R.id.txtname);
        txtsurname = findViewById(R.id.txtsurname);
        rmale = findViewById(R.id.rmale);
        frmale = findViewById(R.id.frmale);
        btnOK = findViewById(R.id.btnOK);

        adp= new ArrayAdapter<String>(getApplicationContext(), android.R.layout.simple_spinner_dropdown_item);
        spn.setAdapter(adp);

        spn.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                strage = parent.getItemAtPosition(i).toString();

            }
        });

    }
}