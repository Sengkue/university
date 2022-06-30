package com.example.sqllife;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;

import androidx.annotation.Nullable;

public class myDatabase extends SQLiteOpenHelper {
    private static final String dbname="dbcw";
    private  static final int dbversion=1;
    String createtable ="create table tbook(" +
            "bid TEXT(20) primary key," +
            "bname TEXT(50)," +
            "price INTEGER," +
            "page INTEGER);";
//  id=>  autoincrement


    public myDatabase(@Nullable Context context) {
        super(context, dbname, null, dbversion);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(createtable);

    }
    public Cursor SelectData(){
        try {
            SQLiteDatabase db = this.getReadableDatabase();
            String sql="select * from tbook where bid='+bid+'";
            Cursor cur= db.rawQuery(sql, null);
            return cur;
        }catch (Exception ex){
            return null;
        }
    }
    public Cursor SelectAllData(){
        try {
            SQLiteDatabase db = this.getWritableDatabase();
            String sql = "select * from tbbook";
            Cursor cur = db.rawQuery(sql, null);
            return cur;

        }catch (Exception ex){
            return null;
        }
    }

    public  long DeleteData(String bid){
        try {
            SQLiteDatabase db = this.getWritableDatabase();
            String sql="delete from tbbook where bid=?";
            SQLiteStatement stm = db.compileStatement(sql);
            stm.bindString(4,bid);

            long r = stm.executeInsert();
            db.close();
            return r;

        }catch (Exception ex){
            return -1;
        }
    }


    public  long UpdateData(String bid, String bname, String price, String page){
        try {
            SQLiteDatabase db = this.getWritableDatabase();
            String sql="Update tbbook set bname=?,price=?,page=?,bid=?";
            SQLiteStatement stm = db.compileStatement(sql);
            stm.bindString(4,bid);
            stm.bindString(1,bname);
            stm.bindString(2,price);
            stm.bindString(3,page);
            long r = stm.executeInsert();
            db.close();
            return r;

        }catch (Exception ex){
            return -1;
        }
    }

    public long InsertData(String bid, String bname, String price, String page){
        try {
            SQLiteDatabase db = this.getWritableDatabase();
            String sql="Insert Into tbbook values(?,?,?,?)";
            SQLiteStatement stm = db.compileStatement(sql);
            stm.bindString(1,bid);
            stm.bindString(2,bname);
            stm.bindString(3,price);
            stm.bindString(4,page);
            long r = stm.executeInsert();
            db.close();
            return r;

        }catch (Exception ex){
            return -1;
        }
    }

//    public Cursor SelectAllData(){
//        try {
//            SQLiteDatabase db = this.getReadableDatabase();
//            String sql ="Select * from tbbook";
//
//        }
//    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int i, int i1) {

    }
}
