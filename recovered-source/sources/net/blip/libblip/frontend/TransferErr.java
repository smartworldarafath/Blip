package net.blip.libblip.frontend;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferErr extends Message {
    public static final TransferErr$Companion$ADAPTER$1 q = new ProtoAdapter(FieldEncoding.m, Reflection.a(TransferErr.class), "type.googleapis.com/frontend.TransferErr", Syntax.l, null, 0);
    public final Code m;
    public final String n;
    public final boolean o;
    public final boolean p;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Code implements WireEnum {
        public static final Code A;
        public static final Code B;
        public static final Code C;
        public static final /* synthetic */ Code[] D;
        public static final Companion k;
        public static final TransferErr$Code$Companion$ADAPTER$1 l;
        public static final Code m;
        public static final Code n;
        public static final Code o;
        public static final Code p;
        public static final Code q;
        public static final Code r;
        public static final Code s;
        public static final Code t;
        public static final Code u;
        public static final Code v;
        public static final Code w;
        public static final Code x;
        public static final Code y;
        public static final Code z;
        public final int j;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Companion {
        }

        /* JADX WARN: Type inference failed for: r0v18, types: [net.blip.libblip.frontend.TransferErr$Code$Companion, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v5, types: [com.squareup.wire.EnumAdapter, net.blip.libblip.frontend.TransferErr$Code$Companion$ADAPTER$1] */
        static {
            Code code = new Code("Unknown", 0, 0);
            m = code;
            Code code2 = new Code("UnpackNoSpace", 1, 100);
            n = code2;
            Code code3 = new Code("UnpackNoPermission", 2, 101);
            o = code3;
            Code code4 = new Code("UnpackNotExist", 3, 102);
            p = code4;
            Code code5 = new Code("UnpackNoFolder", 4, 105);
            q = code5;
            Code code6 = new Code("UnpackNoVolume", 5, 103);
            r = code6;
            Code code7 = new Code("UnpackIntegrity", 6, 104);
            s = code7;
            Code code8 = new Code("PackNoPermission", 7, 201);
            t = code8;
            Code code9 = new Code("PackNotExist", 8, 202);
            u = code9;
            Code code10 = new Code("PackNoVolume", 9, 203);
            v = code10;
            Code code11 = new Code("PackIntegrity", 10, 204);
            w = code11;
            Code code12 = new Code("Connection", 11, 300);
            x = code12;
            Code code13 = new Code("ConnectionNoRoute", 12, 301);
            y = code13;
            Code code14 = new Code("UserCancel", 13, 400);
            z = code14;
            Code code15 = new Code("UserDecline", 14, 401);
            A = code15;
            Code code16 = new Code("UserRevokeInvite", 15, 402);
            B = code16;
            Code code17 = new Code("UserPause", 16, 403);
            C = code17;
            Code[] codeArr = {code, code2, code3, code4, code5, code6, code7, code8, code9, code10, code11, code12, code13, code14, code15, code16, code17};
            D = codeArr;
            EnumEntriesKt.a(codeArr);
            k = new Object();
            l = new EnumAdapter(Reflection.a(Code.class), Syntax.l, code);
        }

        public Code(String str, int i, int i2) {
            this.j = i2;
        }

        public static Code valueOf(String str) {
            return (Code) Enum.valueOf(Code.class, str);
        }

        public static Code[] values() {
            return (Code[]) D.clone();
        }

        @Override // com.squareup.wire.WireEnum
        public final int getValue() {
            return this.j;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferErr(Code code, String str, boolean z, boolean z2, ByteString byteString) {
        super(q, byteString);
        code.getClass();
        str.getClass();
        byteString.getClass();
        this.m = code;
        this.n = str;
        this.o = z;
        this.p = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransferErr)) {
            return false;
        }
        TransferErr transferErr = (TransferErr) obj;
        if (Intrinsics.a(a(), transferErr.a()) && this.m == transferErr.m && Intrinsics.a(this.n, transferErr.n) && this.o == transferErr.o && this.p == transferErr.p) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Boolean.hashCode(this.p) + jb.b(jb.c(this.n, (this.m.hashCode() + (a().hashCode() * 37)) * 37, 37), 37, this.o);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("code=" + this.m);
        q.z(this.n, "msg=", arrayList);
        q.A("action_required=", this.o, arrayList);
        q.A("fatal=", this.p, arrayList);
        return CollectionsKt.y(arrayList, ", ", "TransferErr{", "}", null, 56);
    }
}
