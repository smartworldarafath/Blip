package com.squareup.wire;

import com.squareup.wire.ProtoWriter;
import defpackage.fe;
import defpackage.jb;
import defpackage.u2;
import java.time.Duration;
import java.time.Instant;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProtoAdapter<E> {
    public static final ProtoAdapterKt$commonBool$1 g;
    public static final ProtoAdapterKt$commonInt32$1 h;
    public static final ProtoAdapterKt$commonUint32$1 i;
    public static final ProtoAdapterKt$commonFixed32$1 j;
    public static final ProtoAdapterKt$commonInt64$1 k;
    public static final ProtoAdapterKt$commonUint64$1 l;
    public static final ProtoAdapterKt$commonFixed64$1 m;
    public static final DoubleProtoAdapter n;
    public static final ProtoAdapterKt$commonBytes$1 o;
    public static final ProtoAdapterKt$commonString$1 p;
    public static final ProtoAdapterKt$commonStructMap$1 q;
    public static final ProtoAdapterKt$commonStructList$1 r;
    public static final ProtoAdapterKt$commonStructNull$1 s;
    public static final ProtoAdapterKt$commonStructValue$1 t;
    public static final ProtoAdapter u;
    public final FieldEncoding a;
    public final KClass b;
    public final String c;
    public final Syntax d;
    public final Object e;
    public final RepeatedProtoAdapter f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class UnsupportedTypeProtoAdapter extends ProtoAdapter {
            public UnsupportedTypeProtoAdapter() {
                super(FieldEncoding.m, Reflection.a(Void.class), null, Syntax.k, null, 0);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final Object b(ProtoReader32 protoReader32) {
                protoReader32.getClass();
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final Object c(ProtoReader protoReader) {
                protoReader.getClass();
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final void d(ProtoWriter protoWriter, Object obj) {
                protoWriter.getClass();
                ((Void) obj).getClass();
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
                reverseProtoWriter.getClass();
                ((Void) obj).getClass();
                throw new IllegalStateException("Operation not supported.");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final int h(Object obj) {
                ((Void) obj).getClass();
                throw new IllegalStateException("Operation not supported.");
            }
        }

        public static MapProtoAdapter a(ProtoAdapter protoAdapter, ProtoAdapter protoAdapter2) {
            protoAdapter.getClass();
            protoAdapter2.getClass();
            return new MapProtoAdapter(protoAdapter, protoAdapter2);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EnumConstantNotFoundException extends IllegalArgumentException {
        public final int j;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public EnumConstantNotFoundException(int i, KClass kClass) {
            super(r0.toString());
            String str;
            StringBuilder j = jb.j("Unknown enum tag ", i, " for ");
            if (kClass != null) {
                str = JvmClassMappingKt.a(kClass).getName();
            } else {
                str = null;
            }
            j.append(str);
            this.j = i;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonBool$1] */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonUint64$1] */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonStructNull$1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonInt32$1] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonUint32$1] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonInt64$1] */
    /* JADX WARN: Type inference failed for: r16v1, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonStructMap$1] */
    /* JADX WARN: Type inference failed for: r16v2, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonStructList$1] */
    /* JADX WARN: Type inference failed for: r16v3, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonStructValue$1] */
    /* JADX WARN: Type inference failed for: r3v11, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.DoubleProtoAdapter] */
    /* JADX WARN: Type inference failed for: r3v14, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonBytes$1] */
    /* JADX WARN: Type inference failed for: r3v15, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonString$1] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonFixed32$1] */
    /* JADX WARN: Type inference failed for: r3v6, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.ProtoAdapterKt$commonFixed64$1] */
    /* JADX WARN: Type inference failed for: r3v9, types: [com.squareup.wire.ProtoAdapter, com.squareup.wire.FloatProtoAdapter] */
    static {
        ProtoAdapter unsupportedTypeProtoAdapter;
        FieldEncoding fieldEncoding = FieldEncoding.k;
        ClassReference a = Reflection.a(Boolean.TYPE);
        Syntax syntax = Syntax.k;
        int i2 = 32;
        int i3 = 0;
        ?? protoAdapter = new ProtoAdapter(fieldEncoding, a, null, syntax, Boolean.FALSE, i2, i3);
        g = protoAdapter;
        Class cls = Integer.TYPE;
        int i4 = 0;
        String str = null;
        ?? protoAdapter2 = new ProtoAdapter(fieldEncoding, Reflection.a(cls), str, syntax, i4, i2, i3);
        h = protoAdapter2;
        new IntArrayProtoAdapter(protoAdapter2);
        ?? protoAdapter3 = new ProtoAdapter(fieldEncoding, Reflection.a(cls), str, syntax, i4, i2, i3);
        i = protoAdapter3;
        new IntArrayProtoAdapter(protoAdapter3);
        new IntArrayProtoAdapter(new ProtoAdapter(fieldEncoding, Reflection.a(cls), str, syntax, i4, i2, i3));
        FieldEncoding fieldEncoding2 = FieldEncoding.n;
        int i5 = 32;
        int i6 = 0;
        String str2 = null;
        ?? protoAdapter4 = new ProtoAdapter(fieldEncoding2, Reflection.a(cls), str2, syntax, i4, i5, i6);
        j = protoAdapter4;
        new IntArrayProtoAdapter(protoAdapter4);
        new IntArrayProtoAdapter(new ProtoAdapter(fieldEncoding2, Reflection.a(cls), str2, syntax, i4, i5, i6));
        Class cls2 = Long.TYPE;
        long j2 = 0L;
        int i7 = 32;
        int i8 = 0;
        String str3 = null;
        ?? protoAdapter5 = new ProtoAdapter(fieldEncoding, Reflection.a(cls2), str3, syntax, j2, i7, i8);
        k = protoAdapter5;
        new LongArrayProtoAdapter(protoAdapter5);
        ?? protoAdapter6 = new ProtoAdapter(fieldEncoding, Reflection.a(cls2), str3, syntax, j2, i7, i8);
        l = protoAdapter6;
        new LongArrayProtoAdapter(protoAdapter6);
        new LongArrayProtoAdapter(new ProtoAdapter(fieldEncoding, Reflection.a(cls2), str3, syntax, j2, i7, i8));
        FieldEncoding fieldEncoding3 = FieldEncoding.l;
        int i9 = 32;
        ?? protoAdapter7 = new ProtoAdapter(fieldEncoding3, Reflection.a(cls2), null, syntax, j2, i9, i6);
        m = protoAdapter7;
        new LongArrayProtoAdapter(protoAdapter7);
        new LongArrayProtoAdapter(new ProtoAdapter(fieldEncoding3, Reflection.a(cls2), null, syntax, j2, i9, i6));
        ?? protoAdapter8 = new ProtoAdapter(fieldEncoding2, Reflection.a(Float.TYPE), null, syntax, Float.valueOf(0.0f), i9, i6);
        new FloatArrayProtoAdapter(protoAdapter8);
        String str4 = null;
        ?? protoAdapter9 = new ProtoAdapter(fieldEncoding3, Reflection.a(Double.TYPE), str4, syntax, Double.valueOf(0.0d), i9, i6);
        n = protoAdapter9;
        new DoubleArrayProtoAdapter(protoAdapter9);
        FieldEncoding fieldEncoding4 = FieldEncoding.m;
        ?? protoAdapter10 = new ProtoAdapter(fieldEncoding4, Reflection.a(ByteString.class), str4, syntax, ByteString.m, i9, i6);
        o = protoAdapter10;
        ?? protoAdapter11 = new ProtoAdapter(fieldEncoding4, Reflection.a(String.class), null, syntax, "", i9, i6);
        p = protoAdapter11;
        ClassReference a2 = Reflection.a(Unit.class);
        Syntax syntax2 = Syntax.l;
        int i10 = 48;
        int i11 = 0;
        Object obj = null;
        new ProtoAdapter(fieldEncoding4, a2, "type.googleapis.com/google.protobuf.Empty", syntax2, obj, i10, i11);
        q = new ProtoAdapter(fieldEncoding4, Reflection.a(Map.class), "type.googleapis.com/google.protobuf.Struct", syntax2, obj, i10, i11);
        r = new ProtoAdapter(fieldEncoding4, Reflection.a(Map.class), "type.googleapis.com/google.protobuf.ListValue", syntax2, obj, i10, i11);
        s = new ProtoAdapter(fieldEncoding, Reflection.a(Void.class), "type.googleapis.com/google.protobuf.NullValue", syntax2, null, 48, 0);
        t = new ProtoAdapter(fieldEncoding4, Reflection.a(Object.class), "type.googleapis.com/google.protobuf.Value", syntax2, obj, i10, i11);
        ProtoAdapterKt.a(protoAdapter9, "type.googleapis.com/google.protobuf.DoubleValue");
        ProtoAdapterKt.a(protoAdapter8, "type.googleapis.com/google.protobuf.FloatValue");
        ProtoAdapterKt.a(protoAdapter5, "type.googleapis.com/google.protobuf.Int64Value");
        ProtoAdapterKt.a(protoAdapter6, "type.googleapis.com/google.protobuf.UInt64Value");
        ProtoAdapterKt.a(protoAdapter2, "type.googleapis.com/google.protobuf.Int32Value");
        ProtoAdapterKt.a(protoAdapter3, "type.googleapis.com/google.protobuf.UInt32Value");
        ProtoAdapterKt.a(protoAdapter, "type.googleapis.com/google.protobuf.BoolValue");
        ProtoAdapterKt.a(protoAdapter11, "type.googleapis.com/google.protobuf.StringValue");
        ProtoAdapterKt.a(protoAdapter10, "type.googleapis.com/google.protobuf.BytesValue");
        try {
            new ProtoAdapter(fieldEncoding4, Reflection.a(Duration.class), "type.googleapis.com/google.protobuf.Duration", syntax2, null, 48, 0);
        } catch (NoClassDefFoundError unused) {
            new Companion.UnsupportedTypeProtoAdapter();
        }
        try {
            unsupportedTypeProtoAdapter = new ProtoAdapter(FieldEncoding.m, Reflection.a(Instant.class), "type.googleapis.com/google.protobuf.Timestamp", Syntax.l, null, 48, 0);
        } catch (NoClassDefFoundError unused2) {
            unsupportedTypeProtoAdapter = new Companion.UnsupportedTypeProtoAdapter();
        }
        u = unsupportedTypeProtoAdapter;
    }

    public ProtoAdapter(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj, int i2) {
        FieldEncoding fieldEncoding2;
        fieldEncoding.getClass();
        syntax.getClass();
        this.a = fieldEncoding;
        this.b = kClass;
        this.c = str;
        this.d = syntax;
        this.e = obj;
        boolean z = this instanceof PackedProtoAdapter;
        RepeatedProtoAdapter repeatedProtoAdapter = null;
        if (!z && !(this instanceof RepeatedProtoAdapter) && fieldEncoding != (fieldEncoding2 = FieldEncoding.m)) {
            if (fieldEncoding != fieldEncoding2) {
                new PackedProtoAdapter(this);
            } else {
                u2.g("Unable to pack a length-delimited type.");
                throw null;
            }
        }
        if (!(this instanceof RepeatedProtoAdapter) && !z) {
            repeatedProtoAdapter = new RepeatedProtoAdapter(this);
        }
        this.f = repeatedProtoAdapter;
    }

    public final RepeatedProtoAdapter a() {
        RepeatedProtoAdapter repeatedProtoAdapter = this.f;
        if (repeatedProtoAdapter != null) {
            return repeatedProtoAdapter;
        }
        fe.t("Can't create a repeated adapter from a repeated or packed adapter.");
        return null;
    }

    public Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        ByteArrayProtoReader32 byteArrayProtoReader32 = (ByteArrayProtoReader32) protoReader32;
        ProtoReader32AsProtoReader protoReader32AsProtoReader = byteArrayProtoReader32.j;
        if (protoReader32AsProtoReader == null) {
            protoReader32AsProtoReader = new ProtoReader32AsProtoReader(byteArrayProtoReader32);
            byteArrayProtoReader32.j = protoReader32AsProtoReader;
        }
        return c(protoReader32AsProtoReader);
    }

    public abstract Object c(ProtoReader protoReader);

    public abstract void d(ProtoWriter protoWriter, Object obj);

    public abstract void e(ReverseProtoWriter reverseProtoWriter, Object obj);

    public void f(ProtoWriter protoWriter, int i2, Object obj) {
        protoWriter.getClass();
        if (obj != null) {
            FieldEncoding fieldEncoding = this.a;
            fieldEncoding.getClass();
            protoWriter.b((i2 << 3) | fieldEncoding.j);
            if (fieldEncoding == FieldEncoding.m) {
                protoWriter.b(h(obj));
            }
            d(protoWriter, obj);
        }
    }

    public void g(ReverseProtoWriter reverseProtoWriter, int i2, Object obj) {
        reverseProtoWriter.getClass();
        if (obj != null) {
            FieldEncoding fieldEncoding = FieldEncoding.m;
            FieldEncoding fieldEncoding2 = this.a;
            if (fieldEncoding2 == fieldEncoding) {
                int b = reverseProtoWriter.b();
                e(reverseProtoWriter, obj);
                reverseProtoWriter.g(reverseProtoWriter.b() - b);
            } else {
                e(reverseProtoWriter, obj);
            }
            fieldEncoding2.getClass();
            reverseProtoWriter.g((i2 << 3) | fieldEncoding2.j);
        }
    }

    public abstract int h(Object obj);

    public int i(int i2, Object obj) {
        if (obj == null) {
            return 0;
        }
        int h2 = h(obj);
        if (this.a == FieldEncoding.m) {
            h2 += ProtoWriter.Companion.a(h2);
        }
        return ProtoWriter.Companion.a(i2 << 3) + h2;
    }

    public /* synthetic */ ProtoAdapter(FieldEncoding fieldEncoding, KClass kClass, String str, Syntax syntax, Object obj, int i2, int i3) {
        this(fieldEncoding, kClass, str, syntax, (i2 & 16) != 0 ? null : obj, 0);
    }
}
