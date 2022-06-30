package com.example.linear30_5_2022;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

public class myViewholder extends RecyclerView.ViewHolder {
    TextView tvfoodname;
    TextView tvprice;
    ImageView img;

    public myViewholder(@NonNull View v) {
        super(v);
        tvfoodname = v.findViewById(R.id.textView);
        tvprice = v.findViewById(R.id.textView2);
        img = v.findViewById(R.id.imageView);
    }
}