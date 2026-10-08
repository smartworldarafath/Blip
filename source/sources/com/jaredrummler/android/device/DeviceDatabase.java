package com.jaredrummler.android.device;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import com.jaredrummler.android.device.DeviceName;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DeviceDatabase extends SQLiteOpenHelper {
    public final File j;
    public final Context k;

    public DeviceDatabase(Context context) {
        super(context, "android-devices.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.k = context.getApplicationContext();
        File databasePath = context.getDatabasePath("android-devices.db");
        this.j = databasePath;
        if (!databasePath.exists()) {
            a();
        }
    }

    public final void a() {
        try {
            getReadableDatabase();
            close();
            InputStream open = this.k.getAssets().open("android-devices.db");
            FileOutputStream fileOutputStream = new FileOutputStream(this.j);
            byte[] bArr = new byte[2048];
            while (true) {
                int read = open.read(bArr);
                if (read <= 0) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, read);
                }
            }
            fileOutputStream.flush();
            try {
                fileOutputStream.close();
            } catch (IOException unused) {
            }
            try {
                open.close();
            } catch (IOException unused2) {
            }
        } catch (IOException e) {
            throw new SQLException("Error creating android-devices.db database", e);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:20|(1:22)(3:23|(1:25)|14))(1:5)|6|7|(1:9)|10|11|12|13|14) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final DeviceName.DeviceInfo h() {
        String[] strArr;
        String str;
        String str2 = Build.DEVICE;
        String str3 = Build.MODEL;
        SQLiteDatabase readableDatabase = getReadableDatabase();
        String[] strArr2 = {"name", "codename", "model"};
        DeviceName.DeviceInfo deviceInfo = null;
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            strArr = new String[]{str2, str3};
            str = "codename LIKE ? OR model LIKE ?";
        } else if (!TextUtils.isEmpty(str2)) {
            strArr = new String[]{str2};
            str = "codename LIKE ?";
        } else {
            if (TextUtils.isEmpty(str3)) {
                strArr = new String[]{str3};
                str = "model LIKE ?";
            }
            return deviceInfo;
        }
        Cursor query = readableDatabase.query("devices", strArr2, str, strArr, null, null, null);
        if (query.moveToFirst()) {
            deviceInfo = new DeviceName.DeviceInfo(null, query.getString(query.getColumnIndexOrThrow("name")), query.getString(query.getColumnIndexOrThrow("codename")), query.getString(query.getColumnIndexOrThrow("model")));
        }
        query.close();
        readableDatabase.close();
        return deviceInfo;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 > i) {
            if (!this.k.deleteDatabase("android-devices.db")) {
                File file = this.j;
                if (!file.delete() && file.exists()) {
                    return;
                }
            }
            a();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
    }
}
