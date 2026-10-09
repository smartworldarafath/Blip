package net.blip.libblip.frontend;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import defpackage.jb;
import defpackage.q;
import java.time.Instant;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Registration extends Message {
    public static final Registration$Companion$ADAPTER$1 r = new ProtoAdapter(FieldEncoding.m, Reflection.a(Registration.class), "type.googleapis.com/frontend.Registration", Syntax.l, null, 0);
    public final registration_status m;
    public final String n;
    public final String o;
    public final Instant p;
    public final Err q;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class registration_status implements WireEnum {
        public static final Companion k;
        public static final Registration$registration_status$Companion$ADAPTER$1 l;
        public static final registration_status m;
        public static final registration_status n;
        public static final registration_status o;
        public static final registration_status p;
        public static final /* synthetic */ registration_status[] q;
        public final int j;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Companion {
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [net.blip.libblip.frontend.Registration$registration_status$Companion, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v3, types: [com.squareup.wire.EnumAdapter, net.blip.libblip.frontend.Registration$registration_status$Companion$ADAPTER$1] */
        static {
            registration_status registration_statusVar = new registration_status("NOT_STARTED", 0, 0);
            m = registration_statusVar;
            registration_status registration_statusVar2 = new registration_status("SENDING_CODE", 1, 1);
            n = registration_statusVar2;
            registration_status registration_statusVar3 = new registration_status("CODE_SENT", 2, 2);
            o = registration_statusVar3;
            registration_status registration_statusVar4 = new registration_status("REGISTERING", 3, 3);
            p = registration_statusVar4;
            registration_status[] registration_statusVarArr = {registration_statusVar, registration_statusVar2, registration_statusVar3, registration_statusVar4};
            q = registration_statusVarArr;
            EnumEntriesKt.a(registration_statusVarArr);
            k = new Object();
            l = new EnumAdapter(Reflection.a(registration_status.class), Syntax.l, registration_statusVar);
        }

        public registration_status(String str, int i, int i2) {
            this.j = i2;
        }

        public static registration_status valueOf(String str) {
            return (registration_status) Enum.valueOf(registration_status.class, str);
        }

        public static registration_status[] values() {
            return (registration_status[]) q.clone();
        }

        @Override // com.squareup.wire.WireEnum
        public final int getValue() {
            return this.j;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Registration(registration_status registration_statusVar, String str, String str2, Instant instant, Err err, ByteString byteString) {
        super(r, byteString);
        registration_statusVar.getClass();
        str.getClass();
        str2.getClass();
        byteString.getClass();
        this.m = registration_statusVar;
        this.n = str;
        this.o = str2;
        this.p = instant;
        this.q = err;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Registration)) {
            return false;
        }
        Registration registration = (Registration) obj;
        if (Intrinsics.a(a(), registration.a()) && this.m == registration.m && Intrinsics.a(this.n, registration.n) && Intrinsics.a(this.o, registration.o) && Intrinsics.a(this.p, registration.p) && Intrinsics.a(this.q, registration.q)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int c = jb.c(this.o, jb.c(this.n, (this.m.hashCode() + (a().hashCode() * 37)) * 37, 37), 37);
            int i3 = 0;
            Instant instant = this.p;
            if (instant != null) {
                i = instant.hashCode();
            } else {
                i = 0;
            }
            int i4 = (c + i) * 37;
            Err err = this.q;
            if (err != null) {
                i3 = err.hashCode();
            }
            int i5 = i4 + i3;
            this.l = i5;
            return i5;
        }
        return i2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("status=" + this.m);
        q.z(this.n, "attempt_id=", arrayList);
        q.z(this.o, "email=", arrayList);
        Instant instant = this.p;
        if (instant != null) {
            arrayList.add("code_expiry=" + instant);
        }
        Err err = this.q;
        if (err != null) {
            arrayList.add("error=" + err);
        }
        return CollectionsKt.y(arrayList, ", ", "Registration{", "}", null, 56);
    }
}
