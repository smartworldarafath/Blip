package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UpdateDevice extends Message {
    public static final UpdateDevice$Companion$ADAPTER$1 p = new ProtoAdapter(FieldEncoding.m, Reflection.a(UpdateDevice.class), "type.googleapis.com/event.UpdateDevice", Syntax.l, null, 0);
    public final String m;
    public final String n;
    public final Settings o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Settings extends Message {
        public static final UpdateDevice$Settings$Companion$ADAPTER$1 n = new ProtoAdapter(FieldEncoding.m, Reflection.a(Settings.class), "type.googleapis.com/event.UpdateDevice.Settings", Syntax.l, null, 0);
        public final Boolean m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Settings(Boolean bool, ByteString byteString) {
            super(n, byteString);
            byteString.getClass();
            this.m = bool;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Settings)) {
                return false;
            }
            Settings settings = (Settings) obj;
            if (Intrinsics.a(a(), settings.a()) && Intrinsics.a(this.m, settings.m)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int i;
            int i2 = this.l;
            if (i2 == 0) {
                int hashCode = a().hashCode() * 37;
                Boolean bool = this.m;
                if (bool != null) {
                    i = Boolean.hashCode(bool.booleanValue());
                } else {
                    i = 0;
                }
                int i3 = hashCode + i;
                this.l = i3;
                return i3;
            }
            return i2;
        }

        public final String toString() {
            ArrayList arrayList = new ArrayList();
            Boolean bool = this.m;
            if (bool != null) {
                arrayList.add("allow_diagnostics=" + bool);
            }
            return CollectionsKt.y(arrayList, ", ", "Settings{", "}", null, 56);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateDevice(String str, String str2, Settings settings, ByteString byteString) {
        super(p, byteString);
        str.getClass();
        byteString.getClass();
        this.m = str;
        this.n = str2;
        this.o = settings;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpdateDevice)) {
            return false;
        }
        UpdateDevice updateDevice = (UpdateDevice) obj;
        if (Intrinsics.a(a(), updateDevice.a()) && Intrinsics.a(this.m, updateDevice.m) && Intrinsics.a(this.n, updateDevice.n) && Intrinsics.a(this.o, updateDevice.o)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int c = jb.c(this.m, a().hashCode() * 37, 37);
            int i3 = 0;
            String str = this.n;
            if (str != null) {
                i = str.hashCode();
            } else {
                i = 0;
            }
            int i4 = (c + i) * 37;
            Settings settings = this.o;
            if (settings != null) {
                i3 = settings.hashCode();
            }
            int i5 = i4 + i3;
            this.l = i5;
            return i5;
        }
        return i2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "device_id=", arrayList);
        String str = this.n;
        if (str != null) {
            q.z(str, "name=", arrayList);
        }
        Settings settings = this.o;
        if (settings != null) {
            arrayList.add("settings=" + settings);
        }
        return CollectionsKt.y(arrayList, ", ", "UpdateDevice{", "}", null, 56);
    }
}
