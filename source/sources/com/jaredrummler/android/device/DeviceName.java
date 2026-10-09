package com.jaredrummler.android.device;

import android.content.Context;
import org.json.JSONObject;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DeviceName {
    public static Context a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DeviceInfo {
        public final String a;
        public final String b;
        public final String c;
        public final String d;

        public DeviceInfo(JSONObject jSONObject) {
            this.a = jSONObject.getString("manufacturer");
            this.b = jSONObject.getString("market_name");
            this.c = jSONObject.getString("codename");
            this.d = jSONObject.getString("model");
        }

        public DeviceInfo(String str, String str2, String str3, String str4) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }
    }
}
