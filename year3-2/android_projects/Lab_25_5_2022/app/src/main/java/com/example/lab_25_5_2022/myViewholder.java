package com.example.lab_25_5_2022;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

public class myViewholder extends RecyclerView.ViewHolder {
    TextView tvfoodname;
    TextView tvprice;
    ImageView img;

    public myViewholder(@NonNull View itemView) {
        super(itemView);
    }
}
