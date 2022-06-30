package com.example.linear30_5_2022;

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
    int [] img = {
            R.drawable.pajntaub2,
            R.drawable.pajntaub2,
            R.drawable.pajntaub2,
            R.drawable.pajntaub2,
            R.drawable.pajntaub2,
            R.drawable.pajntaub2,
            R.drawable.pajntaub2,
            R.drawable.pajntaub2,
            R.drawable.pajntaub2,
    };
    String [] menu={"ອາຫານລາບ","ຍຳທອຍ ແຄງ","ແກງໜໍໄມ້","ກ້ອຍກຸ້ງ","ລາບໝູ","ຕຳໄຂ້ເຄັມ","ທອດດູກຂ້າງ","ຕຳເຂົ້າປຸ້ນ","ຕຳມົ້ວ"};
    String [] price={"15000","25000","15000","5000","28000","7000","5000","6000","15000"};



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
            holder.tvfoodname.setText(menu[position]);
            holder.tvprice.setText(price[position]);
            holder.img.setImageResource(img[position]);

            }

            @Override
            public int getItemCount() {
                return menu.length;
            }
        };

        crv.setAdapter(adapter);
        setContentView(crv);
    }
}