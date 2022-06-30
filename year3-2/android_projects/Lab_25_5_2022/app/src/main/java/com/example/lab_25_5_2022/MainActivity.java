package com.example.lab_25_5_2022;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class MainActivity extends AppCompatActivity {
    RecyclerView.Adapter<myViewholder> adapter=null;
    CardView car;
    RecyclerView crv;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        crv=new RecyclerView(this);
        crv.setLayoutManager(new LinearLayoutManager(this));

        adapter = new RecyclerView.Adapter<myViewholder>() {
            @NonNull
            @Override
            public myViewholder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
                View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.activity_main,parent, false);
                myViewholder myholder = new myViewholder(view);
                return myholder;
            }

            @Override
            public void onBindViewHolder(@NonNull myViewholder holder, int position) {

            }

            @Override
            public int getItemCount() {
                return 10;
            }
        };

        crv.setAdapter(adapter);
        setContentView(crv);
    }
}