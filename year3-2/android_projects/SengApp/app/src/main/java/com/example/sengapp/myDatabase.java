package com.example.sengapp;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;

import androidx.annotation.Nullable;

public class myDatabase extends SQLiteOpenHelper {
    private static final String dbname="db1";
    private static final int dbversion=1;
    String createtable="create table tbbook(" +
            "bid TEXT(20) PRIMARY KEY," +
            "bname TEXT(50)," +
            "price INTEGER," +
            "page INTEGER);";


    public myDatabase(@Nullable Context context) {
        super(context, dbname, null, dbversion);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(createtable);

    }
    public int UpdateData(){
        try {
            SQLiteDatabase db=getWritableDatabase();
            String sql="update tbbook set bname='"+"Java"+"' where bid='"+"1"+"'";
            return 1 ;
        }catch (Exception e){
            return -1;
        }
    }

    public long InserData(String bid, String bname, String price, String page){
        try {
            SQLiteDatabase db=getWritableDatabase();
            String sql="insert into tbbook values('"+bid+"','"+bname+"','"+price+"','"+page+"')";
            SQLiteStatement stm =db.compileStatement(sql);
            stm.bindString(1,bid);
            stm.bindString(2,bname);
            stm.bindString(3,price);
            stm.bindString(4,page);
            long r = stm.executeInsert();
            db.close();
            return r;
        }catch (Exception e){
            return -1;

        } 

    }
     public long EditeData(String bid, String bname, String price, String page){
        try {
            SQLiteDatabase db=getWritableDatabase();
            String sql="update tbbook set bname='"+bname+"' where bid='"+bid+"'";
            SQLiteStatement stm =db.compileStatement(sql);
            stm.bindString(1,bid);
            stm.bindString(2,bname);
            stm.bindString(3,price);
            stm.bindString(4,page);
            long r = stm.executeInsert();
            db.close();
            return r;
        }catch (Exception e){
            return -1;

        }

    }

    public Cursor SelectData(String bid){
        try {
            SQLiteDatabase db=getWritableDatabase();
            String sql="select * from tbbook where bid='"+bid+"'";
            Cursor cur =db.rawQuery(sql,null);
            return cur;
        }catch (Exception e){
            return null;
        }
        
    }
    public Cursor SelectAllData(){
        try {
            SQLiteDatabase db=getWritableDatabase();
            String sql="select * from tbbook";
            Cursor cursor =db.rawQuery(sql,null);
            return cursor;
        }catch (Exception e){
            return null;
        }
        
    }



    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {

    }
}
