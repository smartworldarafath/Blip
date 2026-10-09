package androidx.datastore.preferences.protobuf;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import androidx.datastore.preferences.protobuf.MapEntryLite;
import androidx.datastore.preferences.protobuf.UnsafeUtil;
import defpackage.fe;
import io.sentry.d;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MessageSchema<T> implements Schema<T> {
    public static final int[] n = new int[0];
    public static final Unsafe o = UnsafeUtil.i();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final MessageLite e;
    public final boolean f;
    public final int[] g;
    public final int h;
    public final int i;
    public final NewInstanceSchema j;
    public final ListFieldSchema k;
    public final UnknownFieldSchema l;
    public final MapFieldSchema m;

    public MessageSchema(int[] iArr, Object[] objArr, int i, int i2, MessageLite messageLite, int[] iArr2, int i3, int i4, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.f = messageLite instanceof GeneratedMessageLite;
        this.g = iArr2;
        this.h = i3;
        this.i = i4;
        this.j = newInstanceSchema;
        this.k = listFieldSchema;
        this.l = unknownFieldSchema;
        this.e = messageLite;
        this.m = mapFieldSchema;
    }

    public static Field F(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    public static int K(int i) {
        return (i & 267386880) >>> 20;
    }

    public static boolean p(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).i();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0265  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MessageSchema w(RawMessageInfo rawMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MapFieldSchema mapFieldSchema) {
        int i;
        int charAt;
        int i2;
        int i3;
        int i4;
        int[] iArr;
        int i5;
        int i6;
        int i7;
        int i8;
        char charAt2;
        int i9;
        char charAt3;
        int i10;
        char charAt4;
        int i11;
        char charAt5;
        int i12;
        char charAt6;
        int i13;
        char charAt7;
        int i14;
        char charAt8;
        int i15;
        char charAt9;
        int i16;
        int i17;
        int i18;
        int objectFieldOffset;
        int i19;
        Class<?> cls;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        Field F;
        char charAt10;
        int i25;
        int i26;
        Object obj;
        Field F2;
        Object obj2;
        Field F3;
        int i27;
        char charAt11;
        int i28;
        char charAt12;
        int i29;
        char charAt13;
        int i30;
        char charAt14;
        String str = rawMessageInfo.b;
        int length = str.length();
        int i31 = 55296;
        if (str.charAt(0) >= 55296) {
            int i32 = 1;
            while (true) {
                i = i32 + 1;
                if (str.charAt(i32) < 55296) {
                    break;
                }
                i32 = i;
            }
        } else {
            i = 1;
        }
        int i33 = i + 1;
        int charAt15 = str.charAt(i);
        if (charAt15 >= 55296) {
            int i34 = charAt15 & 8191;
            int i35 = 13;
            while (true) {
                i30 = i33 + 1;
                charAt14 = str.charAt(i33);
                if (charAt14 < 55296) {
                    break;
                }
                i34 |= (charAt14 & 8191) << i35;
                i35 += 13;
                i33 = i30;
            }
            charAt15 = i34 | (charAt14 << i35);
            i33 = i30;
        }
        if (charAt15 == 0) {
            i3 = 0;
            i6 = 0;
            charAt = 0;
            i2 = 0;
            i5 = 0;
            i7 = 0;
            iArr = n;
            i4 = 0;
        } else {
            int i36 = i33 + 1;
            int charAt16 = str.charAt(i33);
            if (charAt16 >= 55296) {
                int i37 = charAt16 & 8191;
                int i38 = 13;
                while (true) {
                    i15 = i36 + 1;
                    charAt9 = str.charAt(i36);
                    if (charAt9 < 55296) {
                        break;
                    }
                    i37 |= (charAt9 & 8191) << i38;
                    i38 += 13;
                    i36 = i15;
                }
                charAt16 = i37 | (charAt9 << i38);
                i36 = i15;
            }
            int i39 = i36 + 1;
            int charAt17 = str.charAt(i36);
            if (charAt17 >= 55296) {
                int i40 = charAt17 & 8191;
                int i41 = 13;
                while (true) {
                    i14 = i39 + 1;
                    charAt8 = str.charAt(i39);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i40 |= (charAt8 & 8191) << i41;
                    i41 += 13;
                    i39 = i14;
                }
                charAt17 = i40 | (charAt8 << i41);
                i39 = i14;
            }
            int i42 = i39 + 1;
            int charAt18 = str.charAt(i39);
            if (charAt18 >= 55296) {
                int i43 = charAt18 & 8191;
                int i44 = 13;
                while (true) {
                    i13 = i42 + 1;
                    charAt7 = str.charAt(i42);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i43 |= (charAt7 & 8191) << i44;
                    i44 += 13;
                    i42 = i13;
                }
                charAt18 = i43 | (charAt7 << i44);
                i42 = i13;
            }
            int i45 = i42 + 1;
            int charAt19 = str.charAt(i42);
            if (charAt19 >= 55296) {
                int i46 = charAt19 & 8191;
                int i47 = 13;
                while (true) {
                    i12 = i45 + 1;
                    charAt6 = str.charAt(i45);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i46 |= (charAt6 & 8191) << i47;
                    i47 += 13;
                    i45 = i12;
                }
                charAt19 = i46 | (charAt6 << i47);
                i45 = i12;
            }
            int i48 = i45 + 1;
            charAt = str.charAt(i45);
            if (charAt >= 55296) {
                int i49 = charAt & 8191;
                int i50 = 13;
                while (true) {
                    i11 = i48 + 1;
                    charAt5 = str.charAt(i48);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i49 |= (charAt5 & 8191) << i50;
                    i50 += 13;
                    i48 = i11;
                }
                charAt = i49 | (charAt5 << i50);
                i48 = i11;
            }
            int i51 = i48 + 1;
            int charAt20 = str.charAt(i48);
            if (charAt20 >= 55296) {
                int i52 = charAt20 & 8191;
                int i53 = 13;
                while (true) {
                    i10 = i51 + 1;
                    charAt4 = str.charAt(i51);
                    if (charAt4 < 55296) {
                        break;
                    }
                    i52 |= (charAt4 & 8191) << i53;
                    i53 += 13;
                    i51 = i10;
                }
                charAt20 = i52 | (charAt4 << i53);
                i51 = i10;
            }
            int i54 = i51 + 1;
            int charAt21 = str.charAt(i51);
            if (charAt21 >= 55296) {
                int i55 = charAt21 & 8191;
                int i56 = 13;
                while (true) {
                    i9 = i54 + 1;
                    charAt3 = str.charAt(i54);
                    if (charAt3 < 55296) {
                        break;
                    }
                    i55 |= (charAt3 & 8191) << i56;
                    i56 += 13;
                    i54 = i9;
                }
                charAt21 = i55 | (charAt3 << i56);
                i54 = i9;
            }
            int i57 = i54 + 1;
            int charAt22 = str.charAt(i54);
            if (charAt22 >= 55296) {
                int i58 = charAt22 & 8191;
                int i59 = 13;
                while (true) {
                    i8 = i57 + 1;
                    charAt2 = str.charAt(i57);
                    if (charAt2 < 55296) {
                        break;
                    }
                    i58 |= (charAt2 & 8191) << i59;
                    i59 += 13;
                    i57 = i8;
                }
                charAt22 = i58 | (charAt2 << i59);
                i57 = i8;
            }
            int[] iArr2 = new int[charAt22 + charAt20 + charAt21];
            int i60 = (charAt16 * 2) + charAt17;
            int i61 = charAt20;
            i2 = charAt18;
            i3 = i61;
            i4 = charAt16;
            i33 = i57;
            iArr = iArr2;
            i5 = charAt19;
            i6 = i60;
            i7 = charAt22;
        }
        Unsafe unsafe = o;
        Object[] objArr = rawMessageInfo.c;
        Class<?> cls2 = rawMessageInfo.a.getClass();
        int[] iArr3 = new int[charAt * 3];
        Object[] objArr2 = new Object[charAt * 2];
        int i62 = i7 + i3;
        int i63 = i62;
        int i64 = i7;
        int i65 = 0;
        int i66 = 0;
        while (i33 < length) {
            int i67 = i33 + 1;
            int charAt23 = str.charAt(i33);
            if (charAt23 >= i31) {
                int i68 = charAt23 & 8191;
                int i69 = i67;
                int i70 = 13;
                while (true) {
                    i29 = i69 + 1;
                    charAt13 = str.charAt(i69);
                    i16 = length;
                    if (charAt13 < 55296) {
                        break;
                    }
                    i68 |= (charAt13 & 8191) << i70;
                    i70 += 13;
                    i69 = i29;
                    length = i16;
                }
                charAt23 = i68 | (charAt13 << i70);
                i17 = i29;
            } else {
                i16 = length;
                i17 = i67;
            }
            int i71 = i17 + 1;
            int charAt24 = str.charAt(i17);
            Object[] objArr3 = objArr;
            char c = 55296;
            if (charAt24 >= 55296) {
                int i72 = charAt24 & 8191;
                int i73 = 13;
                while (true) {
                    i28 = i71 + 1;
                    charAt12 = str.charAt(i71);
                    if (charAt12 < c) {
                        break;
                    }
                    i72 |= (charAt12 & 8191) << i73;
                    i73 += 13;
                    i71 = i28;
                    c = 55296;
                }
                charAt24 = i72 | (charAt12 << i73);
                i71 = i28;
            }
            int i74 = charAt24 & 255;
            int i75 = charAt23;
            if ((charAt24 & 1024) != 0) {
                iArr[i65] = i66;
                i65++;
            }
            ProtoSyntax protoSyntax = ProtoSyntax.j;
            int i76 = i4;
            int[] iArr4 = iArr3;
            if (i74 >= 51) {
                int i77 = i71 + 1;
                int charAt25 = str.charAt(i71);
                char c2 = 55296;
                if (charAt25 >= 55296) {
                    int i78 = charAt25 & 8191;
                    int i79 = 13;
                    while (true) {
                        i27 = i77 + 1;
                        charAt11 = str.charAt(i77);
                        if (charAt11 < c2) {
                            break;
                        }
                        i78 |= (charAt11 & 8191) << i79;
                        i79 += 13;
                        i77 = i27;
                        c2 = 55296;
                    }
                    charAt25 = i78 | (charAt11 << i79);
                    i77 = i27;
                }
                int i80 = i74 - 51;
                int i81 = charAt25;
                if (i80 != 9 && i80 != 17) {
                    if (i80 == 12 && (rawMessageInfo.a().equals(protoSyntax) || (charAt24 & 2048) != 0)) {
                        i26 = i6 + 1;
                        objArr2[((i66 / 3) * 2) + 1] = objArr3[i6];
                    }
                    int i82 = i81 * 2;
                    obj = objArr3[i82];
                    if (!(obj instanceof Field)) {
                        F2 = (Field) obj;
                    } else {
                        F2 = F(cls2, (String) obj);
                        objArr3[i82] = F2;
                    }
                    int i83 = i77;
                    int objectFieldOffset2 = (int) unsafe.objectFieldOffset(F2);
                    int i84 = i82 + 1;
                    obj2 = objArr3[i84];
                    if (!(obj2 instanceof Field)) {
                        F3 = (Field) obj2;
                    } else {
                        F3 = F(cls2, (String) obj2);
                        objArr3[i84] = F3;
                    }
                    i19 = i6;
                    i22 = 0;
                    cls = cls2;
                    i23 = (int) unsafe.objectFieldOffset(F3);
                    i24 = objectFieldOffset2;
                    i21 = i83;
                } else {
                    i26 = i6 + 1;
                    objArr2[((i66 / 3) * 2) + 1] = objArr3[i6];
                }
                i6 = i26;
                int i822 = i81 * 2;
                obj = objArr3[i822];
                if (!(obj instanceof Field)) {
                }
                int i832 = i77;
                int objectFieldOffset22 = (int) unsafe.objectFieldOffset(F2);
                int i842 = i822 + 1;
                obj2 = objArr3[i842];
                if (!(obj2 instanceof Field)) {
                }
                i19 = i6;
                i22 = 0;
                cls = cls2;
                i23 = (int) unsafe.objectFieldOffset(F3);
                i24 = objectFieldOffset22;
                i21 = i832;
            } else {
                int i85 = i6 + 1;
                Field F4 = F(cls2, (String) objArr3[i6]);
                if (i74 == 9 || i74 == 17) {
                    objArr2[((i66 / 3) * 2) + 1] = F4.getType();
                } else {
                    if (i74 == 27 || i74 == 49) {
                        i25 = i6 + 2;
                        objArr2[((i66 / 3) * 2) + 1] = objArr3[i85];
                    } else if (i74 == 12 || i74 == 30 || i74 == 44) {
                        if (rawMessageInfo.a() == protoSyntax || (charAt24 & 2048) != 0) {
                            i25 = i6 + 2;
                            objArr2[((i66 / 3) * 2) + 1] = objArr3[i85];
                        }
                    } else if (i74 == 50) {
                        int i86 = i64 + 1;
                        iArr[i64] = i66;
                        int i87 = (i66 / 3) * 2;
                        int i88 = i6 + 2;
                        objArr2[i87] = objArr3[i85];
                        if ((charAt24 & 2048) != 0) {
                            i18 = i6 + 3;
                            objArr2[i87 + 1] = objArr3[i88];
                        } else {
                            i18 = i88;
                        }
                        i64 = i86;
                        objectFieldOffset = (int) unsafe.objectFieldOffset(F4);
                        if ((charAt24 & 4096) != 0 || i74 > 17) {
                            i19 = i18;
                            cls = cls2;
                            i20 = 1048575;
                            i21 = i71;
                            i22 = 0;
                        } else {
                            int i89 = i71 + 1;
                            int charAt26 = str.charAt(i71);
                            if (charAt26 >= 55296) {
                                int i90 = charAt26 & 8191;
                                int i91 = 13;
                                while (true) {
                                    i21 = i89 + 1;
                                    charAt10 = str.charAt(i89);
                                    if (charAt10 < 55296) {
                                        break;
                                    }
                                    i90 |= (charAt10 & 8191) << i91;
                                    i91 += 13;
                                    i89 = i21;
                                }
                                charAt26 = i90 | (charAt10 << i91);
                            } else {
                                i21 = i89;
                            }
                            int i92 = (charAt26 / 32) + (i76 * 2);
                            Object obj3 = objArr3[i92];
                            if (obj3 instanceof Field) {
                                F = (Field) obj3;
                            } else {
                                F = F(cls2, (String) obj3);
                                objArr3[i92] = F;
                            }
                            i19 = i18;
                            cls = cls2;
                            i20 = (int) unsafe.objectFieldOffset(F);
                            i22 = charAt26 % 32;
                        }
                        if (i74 >= 18 && i74 <= 49) {
                            iArr[i63] = objectFieldOffset;
                            i63++;
                        }
                        i23 = i20;
                        i24 = objectFieldOffset;
                    }
                    i18 = i25;
                    objectFieldOffset = (int) unsafe.objectFieldOffset(F4);
                    if ((charAt24 & 4096) != 0) {
                    }
                    i19 = i18;
                    cls = cls2;
                    i20 = 1048575;
                    i21 = i71;
                    i22 = 0;
                    if (i74 >= 18) {
                        iArr[i63] = objectFieldOffset;
                        i63++;
                    }
                    i23 = i20;
                    i24 = objectFieldOffset;
                }
                i18 = i85;
                objectFieldOffset = (int) unsafe.objectFieldOffset(F4);
                if ((charAt24 & 4096) != 0) {
                }
                i19 = i18;
                cls = cls2;
                i20 = 1048575;
                i21 = i71;
                i22 = 0;
                if (i74 >= 18) {
                }
                i23 = i20;
                i24 = objectFieldOffset;
            }
            int i93 = i66 + 1;
            iArr4[i66] = i75;
            int i94 = i66 + 2;
            String str2 = str;
            iArr4[i93] = ((charAt24 & 512) != 0 ? 536870912 : 0) | ((charAt24 & 256) != 0 ? 268435456 : 0) | ((charAt24 & 2048) != 0 ? Integer.MIN_VALUE : 0) | (i74 << 20) | i24;
            i66 += 3;
            iArr4[i94] = (i22 << 20) | i23;
            cls2 = cls;
            objArr = objArr3;
            i6 = i19;
            str = str2;
            length = i16;
            i4 = i76;
            i33 = i21;
            iArr3 = iArr4;
            i31 = 55296;
        }
        return new MessageSchema(iArr3, objArr2, i2, i5, rawMessageInfo.a, iArr, i7, i62, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    public static long x(int i) {
        return i & 1048575;
    }

    public static int y(long j, Object obj) {
        return ((Integer) UnsafeUtil.c.h(j, obj)).intValue();
    }

    public static long z(long j, Object obj) {
        return ((Long) UnsafeUtil.c.h(j, obj)).longValue();
    }

    public final int A(int i) {
        if (i >= this.c && i <= this.d) {
            int[] iArr = this.a;
            int length = (iArr.length / 3) - 1;
            int i2 = 0;
            while (i2 <= length) {
                int i3 = (length + i2) >>> 1;
                int i4 = i3 * 3;
                int i5 = iArr[i4];
                if (i == i5) {
                    return i4;
                }
                if (i < i5) {
                    length = i3 - 1;
                } else {
                    i2 = i3 + 1;
                }
            }
            return -1;
        }
        return -1;
    }

    public final void B(Object obj, long j, CodedInputStreamReader codedInputStreamReader, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int u;
        Internal.ProtobufList a = ((ListFieldSchemaLite) this.k).a(j, obj);
        CodedInputStream codedInputStream = codedInputStreamReader.a;
        int i = codedInputStreamReader.b;
        if ((i & 7) != 3) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            GeneratedMessageLite i2 = schema.i();
            codedInputStreamReader.b(i2, schema, extensionRegistryLite);
            schema.b(i2);
            a.add(i2);
            if (!codedInputStream.c() && codedInputStreamReader.d == 0) {
                u = codedInputStream.u();
            } else {
                return;
            }
        } while (u == i);
        codedInputStreamReader.d = u;
    }

    public final void C(Object obj, int i, CodedInputStreamReader codedInputStreamReader, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int u;
        Internal.ProtobufList a = ((ListFieldSchemaLite) this.k).a(i & 1048575, obj);
        CodedInputStream codedInputStream = codedInputStreamReader.a;
        int i2 = codedInputStreamReader.b;
        if ((i2 & 7) != 2) {
            throw InvalidProtocolBufferException.b();
        }
        do {
            GeneratedMessageLite i3 = schema.i();
            codedInputStreamReader.c(i3, schema, extensionRegistryLite);
            schema.b(i3);
            a.add(i3);
            if (!codedInputStream.c() && codedInputStreamReader.d == 0) {
                u = codedInputStream.u();
            } else {
                return;
            }
        } while (u == i2);
        codedInputStreamReader.d = u;
    }

    public final void D(int i, CodedInputStreamReader codedInputStreamReader, Object obj) {
        if ((536870912 & i) != 0) {
            codedInputStreamReader.w(2);
            UnsafeUtil.o(obj, i & 1048575, codedInputStreamReader.a.t());
        } else if (this.f) {
            codedInputStreamReader.w(2);
            UnsafeUtil.o(obj, i & 1048575, codedInputStreamReader.a.s());
        } else {
            UnsafeUtil.o(obj, i & 1048575, codedInputStreamReader.e());
        }
    }

    public final void E(int i, CodedInputStreamReader codedInputStreamReader, Object obj) {
        boolean z;
        if ((536870912 & i) != 0) {
            z = true;
        } else {
            z = false;
        }
        ListFieldSchema listFieldSchema = this.k;
        if (z) {
            codedInputStreamReader.s(((ListFieldSchemaLite) listFieldSchema).a(i & 1048575, obj), true);
        } else {
            codedInputStreamReader.s(((ListFieldSchemaLite) listFieldSchema).a(i & 1048575, obj), false);
        }
    }

    public final void G(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        UnsafeUtil.m((1 << (i2 >>> 20)) | UnsafeUtil.c.f(j, obj), j, obj);
    }

    public final void H(int i, int i2, Object obj) {
        UnsafeUtil.m(i, this.a[i2 + 2] & 1048575, obj);
    }

    public final void I(Object obj, int i, MessageLite messageLite) {
        o.putObject(obj, L(i) & 1048575, messageLite);
        G(i, obj);
    }

    public final void J(Object obj, int i, int i2, MessageLite messageLite) {
        o.putObject(obj, L(i2) & 1048575, messageLite);
        H(i, i2, obj);
    }

    public final int L(int i) {
        return this.a[i + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0045. Please report as an issue. */
    public final void M(Object obj, Writer writer) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        MessageSchema<T> messageSchema = this;
        int[] iArr = messageSchema.a;
        int length = iArr.length;
        Unsafe unsafe = o;
        int i7 = 1048575;
        int i8 = 1048575;
        int i9 = 0;
        int i10 = 0;
        while (i9 < length) {
            int L = messageSchema.L(i9);
            int i11 = iArr[i9];
            int K = K(L);
            int i12 = 1;
            if (K <= 17) {
                int i13 = iArr[i9 + 2];
                int i14 = i13 & i7;
                if (i14 != i8) {
                    if (i14 == i7) {
                        i10 = 0;
                    } else {
                        i10 = unsafe.getInt(obj, i14);
                    }
                    i8 = i14;
                }
                i = L;
                i2 = 1 << (i13 >>> 20);
            } else {
                i = L;
                i2 = 0;
            }
            long j = i & i7;
            switch (K) {
                case 0:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        double d = UnsafeUtil.c.d(j, obj);
                        CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
                        codedOutputStream.getClass();
                        codedOutputStream.n(i11, Double.doubleToRawLongBits(d));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        float e = UnsafeUtil.c.e(j, obj);
                        CodedOutputStream codedOutputStream2 = ((CodedOutputStreamWriter) writer).a;
                        codedOutputStream2.getClass();
                        codedOutputStream2.l(i11, Float.floatToRawIntBits(e));
                    }
                    messageSchema = this;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.y(i11, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.y(i11, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.p(i11, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.n(i11, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.l(i11, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.h(i11, UnsafeUtil.c.c(j, obj));
                    }
                    messageSchema = this;
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof String) {
                            ((CodedOutputStreamWriter) writer).a.t(i11, (String) object);
                        } else {
                            ((CodedOutputStreamWriter) writer).a.j(i11, (ByteString) object);
                        }
                    }
                    messageSchema = this;
                    break;
                case KeyModifiers.a /* 9 */:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.r(i11, (MessageLite) unsafe.getObject(obj, j), messageSchema.m(i9));
                        break;
                    } else {
                        break;
                    }
                case KeyModifiers.b /* 10 */:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.j(i11, (ByteString) unsafe.getObject(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 11:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.w(i11, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    break;
                case KeyModifiers.c /* 12 */:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.p(i11, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 13:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.l(i11, unsafe.getInt(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 14:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a.n(i11, unsafe.getLong(obj, j));
                    }
                    messageSchema = this;
                    break;
                case 15:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        int i15 = unsafe.getInt(obj, j);
                        ((CodedOutputStreamWriter) writer).a.w(i11, (i15 >> 31) ^ (i15 << 1));
                    }
                    messageSchema = this;
                    break;
                case 16:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        long j2 = unsafe.getLong(obj, j);
                        ((CodedOutputStreamWriter) writer).a.y(i11, (j2 >> 63) ^ (j2 << 1));
                    }
                    messageSchema = this;
                    break;
                case 17:
                    if (messageSchema.o(obj, i9, i8, i10, i2)) {
                        ((CodedOutputStreamWriter) writer).a(i11, unsafe.getObject(obj, j), messageSchema.m(i9));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    i3 = i8;
                    i4 = i10;
                    SchemaUtil.n(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 19:
                    i3 = i8;
                    i4 = i10;
                    SchemaUtil.r(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 20:
                    i3 = i8;
                    i4 = i10;
                    SchemaUtil.t(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 21:
                    i3 = i8;
                    i4 = i10;
                    SchemaUtil.z(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 22:
                    i3 = i8;
                    i4 = i10;
                    SchemaUtil.s(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 23:
                    i3 = i8;
                    i4 = i10;
                    SchemaUtil.q(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 24:
                    i3 = i8;
                    i4 = i10;
                    SchemaUtil.p(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 25:
                    i3 = i8;
                    i4 = i10;
                    SchemaUtil.m(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 26:
                    i5 = i8;
                    i6 = i10;
                    int i16 = iArr[i9];
                    List list = (List) unsafe.getObject(obj, j);
                    Class cls = SchemaUtil.a;
                    if (list != null && !list.isEmpty()) {
                        CodedOutputStreamWriter codedOutputStreamWriter = (CodedOutputStreamWriter) writer;
                        codedOutputStreamWriter.getClass();
                        for (int i17 = 0; i17 < list.size(); i17++) {
                            codedOutputStreamWriter.a.t(i16, (String) list.get(i17));
                        }
                    }
                    i10 = i6;
                    i8 = i5;
                    break;
                case 27:
                    i5 = i8;
                    i6 = i10;
                    int i18 = iArr[i9];
                    List list2 = (List) unsafe.getObject(obj, j);
                    Schema m = messageSchema.m(i9);
                    Class cls2 = SchemaUtil.a;
                    if (list2 != null && !list2.isEmpty()) {
                        CodedOutputStreamWriter codedOutputStreamWriter2 = (CodedOutputStreamWriter) writer;
                        codedOutputStreamWriter2.getClass();
                        for (int i19 = 0; i19 < list2.size(); i19++) {
                            codedOutputStreamWriter2.a.r(i18, (MessageLite) list2.get(i19), m);
                        }
                    }
                    i10 = i6;
                    i8 = i5;
                    break;
                case 28:
                    i5 = i8;
                    i6 = i10;
                    int i20 = iArr[i9];
                    List list3 = (List) unsafe.getObject(obj, j);
                    Class cls3 = SchemaUtil.a;
                    if (list3 != null && !list3.isEmpty()) {
                        CodedOutputStreamWriter codedOutputStreamWriter3 = (CodedOutputStreamWriter) writer;
                        codedOutputStreamWriter3.getClass();
                        for (int i21 = 0; i21 < list3.size(); i21++) {
                            codedOutputStreamWriter3.a.j(i20, (ByteString) list3.get(i21));
                        }
                    }
                    i10 = i6;
                    i8 = i5;
                    break;
                case 29:
                    i3 = i8;
                    i4 = i10;
                    z = false;
                    SchemaUtil.y(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 30:
                    i3 = i8;
                    i4 = i10;
                    z = false;
                    SchemaUtil.o(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 31:
                    i3 = i8;
                    i4 = i10;
                    z = false;
                    SchemaUtil.u(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 32:
                    i3 = i8;
                    i4 = i10;
                    z = false;
                    SchemaUtil.v(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 33:
                    i3 = i8;
                    i4 = i10;
                    z = false;
                    SchemaUtil.w(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 34:
                    i3 = i8;
                    i4 = i10;
                    z = false;
                    SchemaUtil.x(iArr[i9], (List) unsafe.getObject(obj, j), writer, false);
                    i10 = i4;
                    i8 = i3;
                    break;
                case 35:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.n(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 36:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.r(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 37:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.t(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 38:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.z(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 39:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.s(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 40:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.q(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 41:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.p(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 42:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.m(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 43:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.y(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 44:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.o(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 45:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.u(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 46:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.v(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 47:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.w(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 48:
                    i5 = i8;
                    i6 = i10;
                    SchemaUtil.x(iArr[i9], (List) unsafe.getObject(obj, j), writer, true);
                    i10 = i6;
                    i8 = i5;
                    break;
                case 49:
                    i5 = i8;
                    i6 = i10;
                    int i22 = iArr[i9];
                    List list4 = (List) unsafe.getObject(obj, j);
                    Schema m2 = messageSchema.m(i9);
                    Class cls4 = SchemaUtil.a;
                    if (list4 != null && !list4.isEmpty()) {
                        CodedOutputStreamWriter codedOutputStreamWriter4 = (CodedOutputStreamWriter) writer;
                        codedOutputStreamWriter4.getClass();
                        for (int i23 = 0; i23 < list4.size(); i23++) {
                            codedOutputStreamWriter4.a(i22, list4.get(i23), m2);
                        }
                    }
                    i10 = i6;
                    i8 = i5;
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj, j);
                    if (object2 != null) {
                        int i24 = 2;
                        Object obj2 = messageSchema.b[(i9 / 3) * 2];
                        ((MapFieldSchemaLite) messageSchema.m).getClass();
                        MapEntryLite.Metadata metadata = ((MapEntryLite) obj2).a;
                        WireFormat$FieldType wireFormat$FieldType = metadata.b;
                        WireFormat$FieldType wireFormat$FieldType2 = metadata.a;
                        CodedOutputStream codedOutputStream3 = ((CodedOutputStreamWriter) writer).a;
                        codedOutputStream3.getClass();
                        for (Map.Entry entry : ((MapFieldLite) object2).entrySet()) {
                            codedOutputStream3.v(i11, i24);
                            int i25 = i8;
                            codedOutputStream3.x(FieldSet.a(wireFormat$FieldType2, i12, entry.getKey()) + FieldSet.a(wireFormat$FieldType, 2, entry.getValue()));
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            FieldSet.c(codedOutputStream3, wireFormat$FieldType2, 1, key);
                            FieldSet.c(codedOutputStream3, wireFormat$FieldType, 2, value);
                            i24 = 2;
                            i10 = i10;
                            i8 = i25;
                            i12 = 1;
                        }
                    }
                    i5 = i8;
                    i6 = i10;
                    i10 = i6;
                    i8 = i5;
                    break;
                case 51:
                    if (messageSchema.q(i11, i9, obj)) {
                        double doubleValue = ((Double) UnsafeUtil.c.h(j, obj)).doubleValue();
                        CodedOutputStream codedOutputStream4 = ((CodedOutputStreamWriter) writer).a;
                        codedOutputStream4.getClass();
                        codedOutputStream4.n(i11, Double.doubleToRawLongBits(doubleValue));
                    }
                    break;
                case 52:
                    if (messageSchema.q(i11, i9, obj)) {
                        float floatValue = ((Float) UnsafeUtil.c.h(j, obj)).floatValue();
                        CodedOutputStream codedOutputStream5 = ((CodedOutputStreamWriter) writer).a;
                        codedOutputStream5.getClass();
                        codedOutputStream5.l(i11, Float.floatToRawIntBits(floatValue));
                    }
                    break;
                case 53:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.y(i11, z(j, obj));
                    }
                    break;
                case 54:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.y(i11, z(j, obj));
                    }
                    break;
                case 55:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.p(i11, y(j, obj));
                    }
                    break;
                case 56:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.n(i11, z(j, obj));
                    }
                    break;
                case 57:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.l(i11, y(j, obj));
                    }
                    break;
                case 58:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.h(i11, ((Boolean) UnsafeUtil.c.h(j, obj)).booleanValue());
                    }
                    break;
                case 59:
                    if (messageSchema.q(i11, i9, obj)) {
                        Object object3 = unsafe.getObject(obj, j);
                        if (object3 instanceof String) {
                            ((CodedOutputStreamWriter) writer).a.t(i11, (String) object3);
                        } else {
                            ((CodedOutputStreamWriter) writer).a.j(i11, (ByteString) object3);
                        }
                    }
                    break;
                case 60:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.r(i11, (MessageLite) unsafe.getObject(obj, j), messageSchema.m(i9));
                    }
                    break;
                case 61:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.j(i11, (ByteString) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.w(i11, y(j, obj));
                    }
                    break;
                case 63:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.p(i11, y(j, obj));
                    }
                    break;
                case 64:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.l(i11, y(j, obj));
                    }
                    break;
                case 65:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a.n(i11, z(j, obj));
                    }
                    break;
                case 66:
                    if (messageSchema.q(i11, i9, obj)) {
                        int y = y(j, obj);
                        ((CodedOutputStreamWriter) writer).a.w(i11, (y >> 31) ^ (y << 1));
                    }
                    break;
                case 67:
                    if (messageSchema.q(i11, i9, obj)) {
                        long z2 = z(j, obj);
                        ((CodedOutputStreamWriter) writer).a.y(i11, (z2 << 1) ^ (z2 >> 63));
                    }
                    break;
                case 68:
                    if (messageSchema.q(i11, i9, obj)) {
                        ((CodedOutputStreamWriter) writer).a(i11, unsafe.getObject(obj, j), messageSchema.m(i9));
                    }
                    break;
            }
            i9 += 3;
            i7 = 1048575;
        }
        ((UnknownFieldSetLiteSchema) messageSchema.l).getClass();
        ((GeneratedMessageLite) obj).unknownFields.d(writer);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void a(Object obj, Object obj2) {
        Object obj3;
        if (p(obj)) {
            obj2.getClass();
            int i = 0;
            while (true) {
                int[] iArr = this.a;
                if (i < iArr.length) {
                    int L = L(i);
                    long j = 1048575 & L;
                    int i2 = iArr[i];
                    switch (K(L)) {
                        case 0:
                            if (n(i, obj2)) {
                                UnsafeUtil.MemoryAccessor memoryAccessor = UnsafeUtil.c;
                                obj3 = obj;
                                memoryAccessor.l(obj3, j, memoryAccessor.d(j, obj2));
                                G(i, obj3);
                                break;
                            }
                            break;
                        case 1:
                            if (n(i, obj2)) {
                                UnsafeUtil.MemoryAccessor memoryAccessor2 = UnsafeUtil.c;
                                memoryAccessor2.m(obj, j, memoryAccessor2.e(j, obj2));
                                G(i, obj);
                                break;
                            }
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            if (n(i, obj2)) {
                                UnsafeUtil.n(obj, j, UnsafeUtil.c.g(j, obj2));
                                G(i, obj);
                                break;
                            }
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            if (n(i, obj2)) {
                                UnsafeUtil.n(obj, j, UnsafeUtil.c.g(j, obj2));
                                G(i, obj);
                                break;
                            }
                            break;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            if (n(i, obj2)) {
                                UnsafeUtil.m(UnsafeUtil.c.f(j, obj2), j, obj);
                                G(i, obj);
                                break;
                            }
                            break;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            if (n(i, obj2)) {
                                UnsafeUtil.n(obj, j, UnsafeUtil.c.g(j, obj2));
                                G(i, obj);
                                break;
                            }
                            break;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            if (n(i, obj2)) {
                                UnsafeUtil.m(UnsafeUtil.c.f(j, obj2), j, obj);
                                G(i, obj);
                                break;
                            }
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            if (n(i, obj2)) {
                                UnsafeUtil.MemoryAccessor memoryAccessor3 = UnsafeUtil.c;
                                memoryAccessor3.j(obj, j, memoryAccessor3.c(j, obj2));
                                G(i, obj);
                                break;
                            }
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            if (n(i, obj2)) {
                                UnsafeUtil.o(obj, j, UnsafeUtil.c.h(j, obj2));
                                G(i, obj);
                                break;
                            }
                            break;
                        case KeyModifiers.a /* 9 */:
                            s(i, obj, obj2);
                            break;
                        case KeyModifiers.b /* 10 */:
                            if (n(i, obj2)) {
                                UnsafeUtil.o(obj, j, UnsafeUtil.c.h(j, obj2));
                                G(i, obj);
                                break;
                            }
                            break;
                        case 11:
                            if (n(i, obj2)) {
                                UnsafeUtil.m(UnsafeUtil.c.f(j, obj2), j, obj);
                                G(i, obj);
                                break;
                            }
                            break;
                        case KeyModifiers.c /* 12 */:
                            if (n(i, obj2)) {
                                UnsafeUtil.m(UnsafeUtil.c.f(j, obj2), j, obj);
                                G(i, obj);
                                break;
                            }
                            break;
                        case 13:
                            if (n(i, obj2)) {
                                UnsafeUtil.m(UnsafeUtil.c.f(j, obj2), j, obj);
                                G(i, obj);
                                break;
                            }
                            break;
                        case 14:
                            if (n(i, obj2)) {
                                UnsafeUtil.n(obj, j, UnsafeUtil.c.g(j, obj2));
                                G(i, obj);
                                break;
                            }
                            break;
                        case 15:
                            if (n(i, obj2)) {
                                UnsafeUtil.m(UnsafeUtil.c.f(j, obj2), j, obj);
                                G(i, obj);
                                break;
                            }
                            break;
                        case 16:
                            if (n(i, obj2)) {
                                UnsafeUtil.n(obj, j, UnsafeUtil.c.g(j, obj2));
                                G(i, obj);
                                break;
                            }
                            break;
                        case 17:
                            s(i, obj, obj2);
                            break;
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            ((ListFieldSchemaLite) this.k).getClass();
                            UnsafeUtil.MemoryAccessor memoryAccessor4 = UnsafeUtil.c;
                            Internal.ProtobufList protobufList = (Internal.ProtobufList) memoryAccessor4.h(j, obj);
                            Internal.ProtobufList protobufList2 = (Internal.ProtobufList) memoryAccessor4.h(j, obj2);
                            int size = protobufList.size();
                            int size2 = protobufList2.size();
                            if (size > 0 && size2 > 0) {
                                if (!((AbstractProtobufList) protobufList).j) {
                                    protobufList = ((ProtobufArrayList) protobufList).d(size2 + size);
                                }
                                protobufList.addAll(protobufList2);
                            }
                            if (size > 0) {
                                protobufList2 = protobufList;
                            }
                            UnsafeUtil.o(obj, j, protobufList2);
                            break;
                        case 50:
                            Class cls = SchemaUtil.a;
                            UnsafeUtil.MemoryAccessor memoryAccessor5 = UnsafeUtil.c;
                            UnsafeUtil.o(obj, j, ((MapFieldSchemaLite) this.m).a(memoryAccessor5.h(j, obj), memoryAccessor5.h(j, obj2)));
                            break;
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                        case 58:
                        case 59:
                            if (q(i2, i, obj2)) {
                                UnsafeUtil.o(obj, j, UnsafeUtil.c.h(j, obj2));
                                H(i2, i, obj);
                                break;
                            }
                            break;
                        case 60:
                            t(i, obj, obj2);
                            break;
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                            if (q(i2, i, obj2)) {
                                UnsafeUtil.o(obj, j, UnsafeUtil.c.h(j, obj2));
                                H(i2, i, obj);
                                break;
                            }
                            break;
                        case 68:
                            t(i, obj, obj2);
                            break;
                    }
                    obj3 = obj;
                    i += 3;
                    obj = obj3;
                } else {
                    SchemaUtil.k(this.l, obj, obj2);
                    return;
                }
            }
        } else {
            d.e(obj, "Mutating immutable message: ");
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void b(Object obj) {
        if (p(obj)) {
            if (obj instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
                generatedMessageLite.p(Integer.MAX_VALUE);
                generatedMessageLite.memoizedHashCode = 0;
                generatedMessageLite.j();
            }
            int[] iArr = this.a;
            int length = iArr.length;
            for (int i = 0; i < length; i += 3) {
                int L = L(i);
                long j = 1048575 & L;
                int K = K(L);
                if (K != 9) {
                    if (K != 60 && K != 68) {
                        switch (K) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                ((ListFieldSchemaLite) this.k).getClass();
                                AbstractProtobufList abstractProtobufList = (AbstractProtobufList) ((Internal.ProtobufList) UnsafeUtil.c.h(j, obj));
                                if (abstractProtobufList.j) {
                                    abstractProtobufList.j = false;
                                    break;
                                } else {
                                    break;
                                }
                            case 50:
                                Unsafe unsafe = o;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((MapFieldSchemaLite) this.m).getClass();
                                    ((MapFieldLite) object).j = false;
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (q(iArr[i], i, obj)) {
                        m(i).b(o.getObject(obj, j));
                    }
                }
                if (n(i, obj)) {
                    m(i).b(o.getObject(obj, j));
                }
            }
            ((UnknownFieldSetLiteSchema) this.l).getClass();
            UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) obj).unknownFields;
            if (unknownFieldSetLite.e) {
                unknownFieldSetLite.e = false;
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean c(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.h) {
            int i7 = this.g[i6];
            int[] iArr = this.a;
            int i8 = iArr[i7];
            int L = L(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i4) {
                if (i10 != 1048575) {
                    i5 = o.getInt(obj, i10);
                }
                i2 = i7;
                i3 = i5;
                i = i10;
            } else {
                int i12 = i5;
                i = i4;
                i2 = i7;
                i3 = i12;
            }
            if ((268435456 & L) == 0 || o(obj, i2, i, i3, i11)) {
                int K = K(L);
                if (K != 9 && K != 17) {
                    if (K != 27) {
                        if (K != 60 && K != 68) {
                            if (K != 49) {
                                if (K != 50) {
                                    continue;
                                } else {
                                    Object h = UnsafeUtil.c.h(L & 1048575, obj);
                                    ((MapFieldSchemaLite) this.m).getClass();
                                    MapFieldLite mapFieldLite = (MapFieldLite) h;
                                    if (mapFieldLite.isEmpty()) {
                                        continue;
                                    } else {
                                        if (((MapEntryLite) this.b[(i2 / 3) * 2]).a.b.j != WireFormat$JavaType.r) {
                                            continue;
                                        } else {
                                            Schema schema = null;
                                            for (Object obj2 : mapFieldLite.values()) {
                                                if (schema == null) {
                                                    schema = Protobuf.c.a(obj2.getClass());
                                                }
                                                if (!schema.c(obj2)) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i6++;
                                i4 = i;
                                i5 = i3;
                            }
                        } else {
                            if (q(i8, i2, obj)) {
                                if (!m(i2).c(UnsafeUtil.c.h(L & 1048575, obj))) {
                                }
                            } else {
                                continue;
                            }
                            i6++;
                            i4 = i;
                            i5 = i3;
                        }
                    }
                    List list = (List) UnsafeUtil.c.h(L & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        Schema m = m(i2);
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            if (m.c(list.get(i13))) {
                            }
                        }
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                } else {
                    if (o(obj, i2, i, i3, i11)) {
                        if (!m(i2).c(UnsafeUtil.c.h(L & 1048575, obj))) {
                        }
                    } else {
                        continue;
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0049. Please report as an issue. */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int d(GeneratedMessageLite generatedMessageLite) {
        int i;
        int d;
        int d2;
        int d3;
        int f;
        int d4;
        int f2;
        int d5;
        int d6;
        int c;
        int e;
        int b;
        int b2;
        int c2;
        int d7;
        int size;
        int i2;
        int d8;
        int d9;
        int d10;
        int size2;
        int d11;
        int e2;
        int i3;
        int d12;
        int d13;
        int f3;
        int d14;
        int f4;
        int c3;
        MessageSchema<T> messageSchema = this;
        GeneratedMessageLite generatedMessageLite2 = generatedMessageLite;
        Unsafe unsafe = o;
        int i4 = 1048575;
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int[] iArr = messageSchema.a;
            if (i6 < iArr.length) {
                int L = messageSchema.L(i6);
                int K = K(L);
                int i9 = iArr[i6];
                int i10 = iArr[i6 + 2];
                int i11 = i10 & i4;
                if (K <= 17) {
                    if (i11 != i5) {
                        if (i11 == i4) {
                            i7 = 0;
                        } else {
                            i7 = unsafe.getInt(generatedMessageLite2, i11);
                        }
                        i5 = i11;
                    }
                    i = 1 << (i10 >>> 20);
                } else {
                    i = 0;
                }
                long j = L & i4;
                if (K >= FieldType.k.j) {
                    int i12 = FieldType.l.j;
                }
                switch (K) {
                    case 0:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            d = CodedOutputStream.d(i9);
                            b2 = d + 8;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            d2 = CodedOutputStream.d(i9);
                            d6 = d2 + 4;
                            i8 += d6;
                        }
                        messageSchema = this;
                        generatedMessageLite2 = generatedMessageLite;
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            long j2 = unsafe.getLong(generatedMessageLite2, j);
                            d3 = CodedOutputStream.d(i9);
                            f = CodedOutputStream.f(j2);
                            i8 += f + d3;
                        }
                        messageSchema = this;
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            long j3 = unsafe.getLong(generatedMessageLite2, j);
                            d3 = CodedOutputStream.d(i9);
                            f = CodedOutputStream.f(j3);
                            i8 += f + d3;
                        }
                        messageSchema = this;
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            int i13 = unsafe.getInt(generatedMessageLite2, j);
                            d4 = CodedOutputStream.d(i9);
                            f2 = CodedOutputStream.f(i13);
                            b = f2 + d4;
                            i8 += b;
                        }
                        messageSchema = this;
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            d5 = CodedOutputStream.d(i9);
                            d6 = d5 + 8;
                            i8 += d6;
                        }
                        messageSchema = this;
                        generatedMessageLite2 = generatedMessageLite;
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            d2 = CodedOutputStream.d(i9);
                            d6 = d2 + 4;
                            i8 += d6;
                        }
                        messageSchema = this;
                        generatedMessageLite2 = generatedMessageLite;
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            d6 = CodedOutputStream.d(i9) + 1;
                            i8 += d6;
                        }
                        messageSchema = this;
                        generatedMessageLite2 = generatedMessageLite;
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            Object object = unsafe.getObject(generatedMessageLite2, j);
                            if (object instanceof ByteString) {
                                c = CodedOutputStream.b(i9, (ByteString) object);
                            } else {
                                c = CodedOutputStream.c((String) object) + CodedOutputStream.d(i9);
                            }
                            i8 = c + i8;
                        }
                        messageSchema = this;
                        break;
                    case KeyModifiers.a /* 9 */:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            Object object2 = unsafe.getObject(generatedMessageLite2, j);
                            Schema m = messageSchema.m(i6);
                            Class cls = SchemaUtil.a;
                            int d15 = CodedOutputStream.d(i9);
                            int b3 = ((AbstractMessageLite) ((MessageLite) object2)).b(m);
                            e = CodedOutputStream.e(b3) + b3 + d15;
                            i8 += e;
                            break;
                        } else {
                            break;
                        }
                    case KeyModifiers.b /* 10 */:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            b = CodedOutputStream.b(i9, (ByteString) unsafe.getObject(generatedMessageLite2, j));
                            i8 += b;
                        }
                        messageSchema = this;
                        break;
                    case 11:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            int i14 = unsafe.getInt(generatedMessageLite2, j);
                            d4 = CodedOutputStream.d(i9);
                            f2 = CodedOutputStream.e(i14);
                            b = f2 + d4;
                            i8 += b;
                        }
                        messageSchema = this;
                        break;
                    case KeyModifiers.c /* 12 */:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            int i15 = unsafe.getInt(generatedMessageLite2, j);
                            d4 = CodedOutputStream.d(i9);
                            f2 = CodedOutputStream.f(i15);
                            b = f2 + d4;
                            i8 += b;
                        }
                        messageSchema = this;
                        break;
                    case 13:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            d2 = CodedOutputStream.d(i9);
                            d6 = d2 + 4;
                            i8 += d6;
                        }
                        messageSchema = this;
                        generatedMessageLite2 = generatedMessageLite;
                        break;
                    case 14:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            d5 = CodedOutputStream.d(i9);
                            d6 = d5 + 8;
                            i8 += d6;
                        }
                        messageSchema = this;
                        generatedMessageLite2 = generatedMessageLite;
                        break;
                    case 15:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            int i16 = unsafe.getInt(generatedMessageLite2, j);
                            d4 = CodedOutputStream.d(i9);
                            f2 = CodedOutputStream.e((i16 >> 31) ^ (i16 << 1));
                            b = f2 + d4;
                            i8 += b;
                        }
                        messageSchema = this;
                        break;
                    case 16:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            long j4 = unsafe.getLong(generatedMessageLite2, j);
                            d3 = CodedOutputStream.d(i9);
                            f = CodedOutputStream.f((j4 >> 63) ^ (j4 << 1));
                            i8 += f + d3;
                        }
                        messageSchema = this;
                        break;
                    case 17:
                        if (messageSchema.o(generatedMessageLite2, i6, i5, i7, i)) {
                            MessageLite messageLite = (MessageLite) unsafe.getObject(generatedMessageLite2, j);
                            b2 = ((AbstractMessageLite) messageLite).b(messageSchema.m(i6)) + (CodedOutputStream.d(i9) * 2);
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        c2 = SchemaUtil.c(i9, (List) unsafe.getObject(generatedMessageLite2, j));
                        i8 += c2;
                        break;
                    case 19:
                        c2 = SchemaUtil.b(i9, (List) unsafe.getObject(generatedMessageLite2, j));
                        i8 += c2;
                        break;
                    case 20:
                        List list = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls2 = SchemaUtil.a;
                        if (list.size() != 0) {
                            d7 = (CodedOutputStream.d(i9) * list.size()) + SchemaUtil.e(list);
                            i8 += d7;
                            break;
                        }
                        d7 = 0;
                        i8 += d7;
                    case 21:
                        List list2 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls3 = SchemaUtil.a;
                        size = list2.size();
                        if (size != 0) {
                            i2 = SchemaUtil.i(list2);
                            d8 = CodedOutputStream.d(i9);
                            d7 = (d8 * size) + i2;
                            i8 += d7;
                            break;
                        }
                        d7 = 0;
                        i8 += d7;
                    case 22:
                        List list3 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls4 = SchemaUtil.a;
                        size = list3.size();
                        if (size != 0) {
                            i2 = SchemaUtil.d(list3);
                            d8 = CodedOutputStream.d(i9);
                            d7 = (d8 * size) + i2;
                            i8 += d7;
                            break;
                        }
                        d7 = 0;
                        i8 += d7;
                    case 23:
                        c2 = SchemaUtil.c(i9, (List) unsafe.getObject(generatedMessageLite2, j));
                        i8 += c2;
                        break;
                    case 24:
                        c2 = SchemaUtil.b(i9, (List) unsafe.getObject(generatedMessageLite2, j));
                        i8 += c2;
                        break;
                    case 25:
                        List list4 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls5 = SchemaUtil.a;
                        int size3 = list4.size();
                        if (size3 == 0) {
                            d9 = 0;
                        } else {
                            d9 = (CodedOutputStream.d(i9) + 1) * size3;
                        }
                        i8 += d9;
                        break;
                    case 26:
                        List list5 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls6 = SchemaUtil.a;
                        int size4 = list5.size();
                        if (size4 != 0) {
                            d7 = CodedOutputStream.d(i9) * size4;
                            for (int i17 = 0; i17 < size4; i17++) {
                                Object obj = list5.get(i17);
                                if (obj instanceof ByteString) {
                                    int size5 = ((ByteString) obj).size();
                                    d7 = CodedOutputStream.e(size5) + size5 + d7;
                                } else {
                                    d7 = CodedOutputStream.c((String) obj) + d7;
                                }
                            }
                            i8 += d7;
                            break;
                        }
                        d7 = 0;
                        i8 += d7;
                    case 27:
                        List list6 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Schema m2 = messageSchema.m(i6);
                        Class cls7 = SchemaUtil.a;
                        int size6 = list6.size();
                        if (size6 == 0) {
                            d10 = 0;
                        } else {
                            d10 = CodedOutputStream.d(i9) * size6;
                            for (int i18 = 0; i18 < size6; i18++) {
                                int b4 = ((AbstractMessageLite) ((MessageLite) list6.get(i18))).b(m2);
                                d10 += CodedOutputStream.e(b4) + b4;
                            }
                        }
                        i8 += d10;
                        break;
                    case 28:
                        List list7 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls8 = SchemaUtil.a;
                        int size7 = list7.size();
                        if (size7 != 0) {
                            d7 = CodedOutputStream.d(i9) * size7;
                            for (int i19 = 0; i19 < list7.size(); i19++) {
                                int size8 = ((ByteString) list7.get(i19)).size();
                                d7 += CodedOutputStream.e(size8) + size8;
                            }
                            i8 += d7;
                            break;
                        }
                        d7 = 0;
                        i8 += d7;
                    case 29:
                        List list8 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls9 = SchemaUtil.a;
                        size = list8.size();
                        if (size != 0) {
                            i2 = SchemaUtil.h(list8);
                            d8 = CodedOutputStream.d(i9);
                            d7 = (d8 * size) + i2;
                            i8 += d7;
                            break;
                        }
                        d7 = 0;
                        i8 += d7;
                    case 30:
                        List list9 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls10 = SchemaUtil.a;
                        size = list9.size();
                        if (size != 0) {
                            i2 = SchemaUtil.a(list9);
                            d8 = CodedOutputStream.d(i9);
                            d7 = (d8 * size) + i2;
                            i8 += d7;
                            break;
                        }
                        d7 = 0;
                        i8 += d7;
                    case 31:
                        c2 = SchemaUtil.b(i9, (List) unsafe.getObject(generatedMessageLite2, j));
                        i8 += c2;
                        break;
                    case 32:
                        c2 = SchemaUtil.c(i9, (List) unsafe.getObject(generatedMessageLite2, j));
                        i8 += c2;
                        break;
                    case 33:
                        List list10 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls11 = SchemaUtil.a;
                        size = list10.size();
                        if (size != 0) {
                            i2 = SchemaUtil.f(list10);
                            d8 = CodedOutputStream.d(i9);
                            d7 = (d8 * size) + i2;
                            i8 += d7;
                            break;
                        }
                        d7 = 0;
                        i8 += d7;
                    case 34:
                        List list11 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls12 = SchemaUtil.a;
                        size = list11.size();
                        if (size != 0) {
                            i2 = SchemaUtil.g(list11);
                            d8 = CodedOutputStream.d(i9);
                            d7 = (d8 * size) + i2;
                            i8 += d7;
                            break;
                        }
                        d7 = 0;
                        i8 += d7;
                    case 35:
                        List list12 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls13 = SchemaUtil.a;
                        size2 = list12.size() * 8;
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        List list13 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls14 = SchemaUtil.a;
                        size2 = list13.size() * 4;
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        size2 = SchemaUtil.e((List) unsafe.getObject(generatedMessageLite2, j));
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        size2 = SchemaUtil.i((List) unsafe.getObject(generatedMessageLite2, j));
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        size2 = SchemaUtil.d((List) unsafe.getObject(generatedMessageLite2, j));
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        List list14 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls15 = SchemaUtil.a;
                        size2 = list14.size() * 8;
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        List list15 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls16 = SchemaUtil.a;
                        size2 = list15.size() * 4;
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        List list16 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls17 = SchemaUtil.a;
                        size2 = list16.size();
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        size2 = SchemaUtil.h((List) unsafe.getObject(generatedMessageLite2, j));
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        size2 = SchemaUtil.a((List) unsafe.getObject(generatedMessageLite2, j));
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        List list17 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls18 = SchemaUtil.a;
                        size2 = list17.size() * 4;
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        List list18 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Class cls19 = SchemaUtil.a;
                        size2 = list18.size() * 8;
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        size2 = SchemaUtil.f((List) unsafe.getObject(generatedMessageLite2, j));
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        size2 = SchemaUtil.g((List) unsafe.getObject(generatedMessageLite2, j));
                        if (size2 > 0) {
                            d11 = CodedOutputStream.d(i9);
                            e2 = CodedOutputStream.e(size2);
                            i8 += e2 + d11 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        List list19 = (List) unsafe.getObject(generatedMessageLite2, j);
                        Schema m3 = messageSchema.m(i6);
                        Class cls20 = SchemaUtil.a;
                        int size9 = list19.size();
                        if (size9 != 0) {
                            i3 = 0;
                            for (int i20 = 0; i20 < size9; i20++) {
                                i3 += ((AbstractMessageLite) ((MessageLite) list19.get(i20))).b(m3) + (CodedOutputStream.d(i9) * 2);
                            }
                            i8 += i3;
                            break;
                        }
                        i3 = 0;
                        i8 += i3;
                    case 50:
                        Object object3 = unsafe.getObject(generatedMessageLite2, j);
                        Object obj2 = messageSchema.b[(i6 / 3) * 2];
                        ((MapFieldSchemaLite) messageSchema.m).getClass();
                        MapFieldLite mapFieldLite = (MapFieldLite) object3;
                        MapEntryLite mapEntryLite = (MapEntryLite) obj2;
                        if (!mapFieldLite.isEmpty()) {
                            i3 = 0;
                            for (Map.Entry entry : mapFieldLite.entrySet()) {
                                Object key = entry.getKey();
                                Object value = entry.getValue();
                                mapEntryLite.getClass();
                                int d16 = CodedOutputStream.d(i9);
                                MapEntryLite.Metadata metadata = mapEntryLite.a;
                                int a = FieldSet.a(metadata.a, 1, key) + FieldSet.a(metadata.b, 2, value);
                                i3 += CodedOutputStream.e(a) + a + d16;
                            }
                            i8 += i3;
                            break;
                        }
                        i3 = 0;
                        i8 += i3;
                    case 51:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            d = CodedOutputStream.d(i9);
                            b2 = d + 8;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            d12 = CodedOutputStream.d(i9);
                            b2 = d12 + 4;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            long z = z(j, generatedMessageLite2);
                            d13 = CodedOutputStream.d(i9);
                            f3 = CodedOutputStream.f(z);
                            e = f3 + d13;
                            i8 += e;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            long z2 = z(j, generatedMessageLite2);
                            d13 = CodedOutputStream.d(i9);
                            f3 = CodedOutputStream.f(z2);
                            e = f3 + d13;
                            i8 += e;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            int y = y(j, generatedMessageLite2);
                            d14 = CodedOutputStream.d(i9);
                            f4 = CodedOutputStream.f(y);
                            b2 = f4 + d14;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            d = CodedOutputStream.d(i9);
                            b2 = d + 8;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            d12 = CodedOutputStream.d(i9);
                            b2 = d12 + 4;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            b2 = CodedOutputStream.d(i9) + 1;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            Object object4 = unsafe.getObject(generatedMessageLite2, j);
                            if (object4 instanceof ByteString) {
                                c3 = CodedOutputStream.b(i9, (ByteString) object4);
                            } else {
                                c3 = CodedOutputStream.c((String) object4) + CodedOutputStream.d(i9);
                            }
                            i8 = c3 + i8;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            Object object5 = unsafe.getObject(generatedMessageLite2, j);
                            Schema m4 = messageSchema.m(i6);
                            Class cls21 = SchemaUtil.a;
                            int d17 = CodedOutputStream.d(i9);
                            int b5 = ((AbstractMessageLite) ((MessageLite) object5)).b(m4);
                            e = CodedOutputStream.e(b5) + b5 + d17;
                            i8 += e;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            b2 = CodedOutputStream.b(i9, (ByteString) unsafe.getObject(generatedMessageLite2, j));
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            int y2 = y(j, generatedMessageLite2);
                            d14 = CodedOutputStream.d(i9);
                            f4 = CodedOutputStream.e(y2);
                            b2 = f4 + d14;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            int y3 = y(j, generatedMessageLite2);
                            d14 = CodedOutputStream.d(i9);
                            f4 = CodedOutputStream.f(y3);
                            b2 = f4 + d14;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            d12 = CodedOutputStream.d(i9);
                            b2 = d12 + 4;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            d = CodedOutputStream.d(i9);
                            b2 = d + 8;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            int y4 = y(j, generatedMessageLite2);
                            d14 = CodedOutputStream.d(i9);
                            f4 = CodedOutputStream.e((y4 >> 31) ^ (y4 << 1));
                            b2 = f4 + d14;
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            long z3 = z(j, generatedMessageLite2);
                            d13 = CodedOutputStream.d(i9);
                            f3 = CodedOutputStream.f((z3 << 1) ^ (z3 >> 63));
                            e = f3 + d13;
                            i8 += e;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (messageSchema.q(i9, i6, generatedMessageLite2)) {
                            MessageLite messageLite2 = (MessageLite) unsafe.getObject(generatedMessageLite2, j);
                            b2 = ((AbstractMessageLite) messageLite2).b(messageSchema.m(i6)) + (CodedOutputStream.d(i9) * 2);
                            i8 += b2;
                            break;
                        } else {
                            break;
                        }
                }
                i6 += 3;
                i4 = 1048575;
            } else {
                ((UnknownFieldSetLiteSchema) messageSchema.l).getClass();
                return generatedMessageLite2.unknownFields.b() + i8;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0219, code lost:
    
        if (r4 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e2, code lost:
    
        if (r4 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e4, code lost:
    
        r8 = 1231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e5, code lost:
    
        r3 = r8 + r3;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001c. Please report as an issue. */
    @Override // androidx.datastore.preferences.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int e(GeneratedMessageLite generatedMessageLite) {
        int i;
        int b;
        int i2;
        int f;
        int i3;
        int[] iArr = this.a;
        int length = iArr.length;
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5 += 3) {
            int L = L(i5);
            int i6 = iArr[i5];
            long j = 1048575 & L;
            int i7 = 1237;
            int i8 = 37;
            switch (K(L)) {
                case 0:
                    i = i4 * 53;
                    b = Internal.b(Double.doubleToLongBits(UnsafeUtil.c.d(j, generatedMessageLite)));
                    i4 = b + i;
                    break;
                case 1:
                    i = i4 * 53;
                    b = Float.floatToIntBits(UnsafeUtil.c.e(j, generatedMessageLite));
                    i4 = b + i;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    i = i4 * 53;
                    b = Internal.b(UnsafeUtil.c.g(j, generatedMessageLite));
                    i4 = b + i;
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    i = i4 * 53;
                    b = Internal.b(UnsafeUtil.c.g(j, generatedMessageLite));
                    i4 = b + i;
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    i2 = i4 * 53;
                    f = UnsafeUtil.c.f(j, generatedMessageLite);
                    i4 = i2 + f;
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    i = i4 * 53;
                    b = Internal.b(UnsafeUtil.c.g(j, generatedMessageLite));
                    i4 = b + i;
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    i2 = i4 * 53;
                    f = UnsafeUtil.c.f(j, generatedMessageLite);
                    i4 = i2 + f;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    i3 = i4 * 53;
                    boolean c = UnsafeUtil.c.c(j, generatedMessageLite);
                    Charset charset = Internal.a;
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    i = i4 * 53;
                    b = ((String) UnsafeUtil.c.h(j, generatedMessageLite)).hashCode();
                    i4 = b + i;
                    break;
                case KeyModifiers.a /* 9 */:
                    Object h = UnsafeUtil.c.h(j, generatedMessageLite);
                    if (h != null) {
                        i8 = h.hashCode();
                    }
                    i4 = (i4 * 53) + i8;
                    break;
                case KeyModifiers.b /* 10 */:
                    i = i4 * 53;
                    b = UnsafeUtil.c.h(j, generatedMessageLite).hashCode();
                    i4 = b + i;
                    break;
                case 11:
                    i2 = i4 * 53;
                    f = UnsafeUtil.c.f(j, generatedMessageLite);
                    i4 = i2 + f;
                    break;
                case KeyModifiers.c /* 12 */:
                    i2 = i4 * 53;
                    f = UnsafeUtil.c.f(j, generatedMessageLite);
                    i4 = i2 + f;
                    break;
                case 13:
                    i2 = i4 * 53;
                    f = UnsafeUtil.c.f(j, generatedMessageLite);
                    i4 = i2 + f;
                    break;
                case 14:
                    i = i4 * 53;
                    b = Internal.b(UnsafeUtil.c.g(j, generatedMessageLite));
                    i4 = b + i;
                    break;
                case 15:
                    i2 = i4 * 53;
                    f = UnsafeUtil.c.f(j, generatedMessageLite);
                    i4 = i2 + f;
                    break;
                case 16:
                    i = i4 * 53;
                    b = Internal.b(UnsafeUtil.c.g(j, generatedMessageLite));
                    i4 = b + i;
                    break;
                case 17:
                    Object h2 = UnsafeUtil.c.h(j, generatedMessageLite);
                    if (h2 != null) {
                        i8 = h2.hashCode();
                    }
                    i4 = (i4 * 53) + i8;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i4 * 53;
                    b = UnsafeUtil.c.h(j, generatedMessageLite).hashCode();
                    i4 = b + i;
                    break;
                case 50:
                    i = i4 * 53;
                    b = UnsafeUtil.c.h(j, generatedMessageLite).hashCode();
                    i4 = b + i;
                    break;
                case 51:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = Internal.b(Double.doubleToLongBits(((Double) UnsafeUtil.c.h(j, generatedMessageLite)).doubleValue()));
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = Float.floatToIntBits(((Float) UnsafeUtil.c.h(j, generatedMessageLite)).floatValue());
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = Internal.b(z(j, generatedMessageLite));
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = Internal.b(z(j, generatedMessageLite));
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (q(i6, i5, generatedMessageLite)) {
                        i2 = i4 * 53;
                        f = y(j, generatedMessageLite);
                        i4 = i2 + f;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = Internal.b(z(j, generatedMessageLite));
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (q(i6, i5, generatedMessageLite)) {
                        i2 = i4 * 53;
                        f = y(j, generatedMessageLite);
                        i4 = i2 + f;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (q(i6, i5, generatedMessageLite)) {
                        i3 = i4 * 53;
                        boolean booleanValue = ((Boolean) UnsafeUtil.c.h(j, generatedMessageLite)).booleanValue();
                        Charset charset2 = Internal.a;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = ((String) UnsafeUtil.c.h(j, generatedMessageLite)).hashCode();
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = UnsafeUtil.c.h(j, generatedMessageLite).hashCode();
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = UnsafeUtil.c.h(j, generatedMessageLite).hashCode();
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (q(i6, i5, generatedMessageLite)) {
                        i2 = i4 * 53;
                        f = y(j, generatedMessageLite);
                        i4 = i2 + f;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (q(i6, i5, generatedMessageLite)) {
                        i2 = i4 * 53;
                        f = y(j, generatedMessageLite);
                        i4 = i2 + f;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (q(i6, i5, generatedMessageLite)) {
                        i2 = i4 * 53;
                        f = y(j, generatedMessageLite);
                        i4 = i2 + f;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = Internal.b(z(j, generatedMessageLite));
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (q(i6, i5, generatedMessageLite)) {
                        i2 = i4 * 53;
                        f = y(j, generatedMessageLite);
                        i4 = i2 + f;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = Internal.b(z(j, generatedMessageLite));
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (q(i6, i5, generatedMessageLite)) {
                        i = i4 * 53;
                        b = UnsafeUtil.c.h(j, generatedMessageLite).hashCode();
                        i4 = b + i;
                        break;
                    } else {
                        break;
                    }
            }
        }
        ((UnknownFieldSetLiteSchema) this.l).getClass();
        return generatedMessageLite.unknownFields.hashCode() + (i4 * 53);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void f(Object obj, Writer writer) {
        writer.getClass();
        M(obj, writer);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.l(r5.h(r7, r12), r5.h(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008a, code lost:
    
        if (r5.g(r7, r12) == r5.g(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009e, code lost:
    
        if (r5.f(r7, r12) == r5.f(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b4, code lost:
    
        if (r5.g(r7, r12) == r5.g(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
    
        if (r5.f(r7, r12) == r5.f(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00dc, code lost:
    
        if (r5.f(r7, r12) == r5.f(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f0, code lost:
    
        if (r5.f(r7, r12) == r5.f(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0108, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.l(r5.h(r7, r12), r5.h(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0120, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.l(r5.h(r7, r12), r5.h(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0138, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.l(r5.h(r7, r12), r5.h(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014c, code lost:
    
        if (r5.c(r7, r12) == r5.c(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0160, code lost:
    
        if (r5.f(r7, r12) == r5.f(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0176, code lost:
    
        if (r5.g(r7, r12) == r5.g(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x018a, code lost:
    
        if (r5.f(r7, r12) == r5.f(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019f, code lost:
    
        if (r5.g(r7, r12) == r5.g(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01b4, code lost:
    
        if (r5.g(r7, r12) == r5.g(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cf, code lost:
    
        if (java.lang.Float.floatToIntBits(r5.e(r7, r12)) == java.lang.Float.floatToIntBits(r5.e(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01ec, code lost:
    
        if (java.lang.Double.doubleToLongBits(r5.d(r7, r12)) == java.lang.Double.doubleToLongBits(r5.d(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
    
        if (androidx.datastore.preferences.protobuf.SchemaUtil.l(r9.h(r7, r12), r9.h(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    @Override // androidx.datastore.preferences.protobuf.Schema
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean g(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2) {
        int[] iArr = this.a;
        int length = iArr.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i < length) {
                int L = L(i);
                long j = L & 1048575;
                switch (K(L)) {
                    case 0:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case 1:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor2 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor3 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor4 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor5 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor6 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor7 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor8 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor9 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case KeyModifiers.a /* 9 */:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor10 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case KeyModifiers.b /* 10 */:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor11 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case 11:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor12 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case KeyModifiers.c /* 12 */:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor13 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case 13:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor14 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case 14:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor15 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case 15:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor16 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case 16:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor17 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case 17:
                        if (j(generatedMessageLite, generatedMessageLite2, i)) {
                            UnsafeUtil.MemoryAccessor memoryAccessor18 = UnsafeUtil.c;
                            break;
                        }
                        z = false;
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        UnsafeUtil.MemoryAccessor memoryAccessor19 = UnsafeUtil.c;
                        z = SchemaUtil.l(memoryAccessor19.h(j, generatedMessageLite), memoryAccessor19.h(j, generatedMessageLite2));
                        break;
                    case 50:
                        UnsafeUtil.MemoryAccessor memoryAccessor20 = UnsafeUtil.c;
                        z = SchemaUtil.l(memoryAccessor20.h(j, generatedMessageLite), memoryAccessor20.h(j, generatedMessageLite2));
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                        long j2 = iArr[i + 2] & 1048575;
                        UnsafeUtil.MemoryAccessor memoryAccessor21 = UnsafeUtil.c;
                        if (memoryAccessor21.f(j2, generatedMessageLite) == memoryAccessor21.f(j2, generatedMessageLite2)) {
                            break;
                        }
                        z = false;
                        break;
                }
                if (z) {
                    i += 3;
                }
            } else {
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = (UnknownFieldSetLiteSchema) this.l;
                unknownFieldSetLiteSchema.getClass();
                UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
                unknownFieldSetLiteSchema.getClass();
                if (unknownFieldSetLite.equals(generatedMessageLite2.unknownFields)) {
                    return true;
                }
            }
        }
        return false;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void h(java.lang.Object r19, androidx.datastore.preferences.protobuf.CodedInputStreamReader r20, androidx.datastore.preferences.protobuf.ExtensionRegistryLite r21) {
        /*
            Method dump skipped, instructions count: 1834
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.MessageSchema.h(java.lang.Object, androidx.datastore.preferences.protobuf.CodedInputStreamReader, androidx.datastore.preferences.protobuf.ExtensionRegistryLite):void");
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final GeneratedMessageLite i() {
        ((NewInstanceSchemaLite) this.j).getClass();
        return ((GeneratedMessageLite) this.e).m();
    }

    public final boolean j(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2, int i) {
        if (n(i, generatedMessageLite) == n(i, generatedMessageLite2)) {
            return true;
        }
        return false;
    }

    public final void k(int i, Object obj, Object obj2) {
        int i2 = this.a[i];
        if (UnsafeUtil.c.h(L(i) & 1048575, obj) == null) {
            return;
        }
        l(i);
    }

    public final void l(int i) {
        if (this.b[((i / 3) * 2) + 1] == null) {
            return;
        }
        d.i();
    }

    public final Schema m(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.b;
        Schema schema = (Schema) objArr[i2];
        if (schema != null) {
            return schema;
        }
        Schema a = Protobuf.c.a((Class) objArr[i2 + 1]);
        objArr[i2] = a;
        return a;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0022. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0111 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0110 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean n(int i, Object obj) {
        int i2 = this.a[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int L = L(i);
            long j2 = L & 1048575;
            switch (K(L)) {
                case 0:
                    if (Double.doubleToRawLongBits(UnsafeUtil.c.d(j2, obj)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(UnsafeUtil.c.e(j2, obj)) != 0) {
                    }
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    if (UnsafeUtil.c.g(j2, obj) != 0) {
                    }
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    if (UnsafeUtil.c.g(j2, obj) != 0) {
                    }
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    if (UnsafeUtil.c.f(j2, obj) != 0) {
                    }
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    if (UnsafeUtil.c.g(j2, obj) != 0) {
                    }
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (UnsafeUtil.c.f(j2, obj) != 0) {
                    }
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return UnsafeUtil.c.c(j2, obj);
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    Object h = UnsafeUtil.c.h(j2, obj);
                    if (h instanceof String) {
                        return !((String) h).isEmpty();
                    }
                    if (h instanceof ByteString) {
                        return !ByteString.k.equals(h);
                    }
                    fe.h();
                    return false;
                case KeyModifiers.a /* 9 */:
                    if (UnsafeUtil.c.h(j2, obj) != null) {
                    }
                    break;
                case KeyModifiers.b /* 10 */:
                    return !ByteString.k.equals(UnsafeUtil.c.h(j2, obj));
                case 11:
                    if (UnsafeUtil.c.f(j2, obj) != 0) {
                    }
                    break;
                case KeyModifiers.c /* 12 */:
                    if (UnsafeUtil.c.f(j2, obj) != 0) {
                    }
                    break;
                case 13:
                    if (UnsafeUtil.c.f(j2, obj) != 0) {
                    }
                    break;
                case 14:
                    if (UnsafeUtil.c.g(j2, obj) != 0) {
                    }
                    break;
                case 15:
                    if (UnsafeUtil.c.f(j2, obj) != 0) {
                    }
                    break;
                case 16:
                    if (UnsafeUtil.c.g(j2, obj) != 0) {
                    }
                    break;
                case 17:
                    if (UnsafeUtil.c.h(j2, obj) != null) {
                    }
                    break;
                default:
                    fe.h();
                    return false;
            }
        } else if (((1 << (i2 >>> 20)) & UnsafeUtil.c.f(j, obj)) != 0) {
        }
    }

    public final boolean o(Object obj, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return n(i, obj);
        }
        if ((i3 & i4) != 0) {
            return true;
        }
        return false;
    }

    public final boolean q(int i, int i2, Object obj) {
        if (UnsafeUtil.c.f(this.a[i2 + 2] & 1048575, obj) == i) {
            return true;
        }
        return false;
    }

    public final void r(Object obj, int i, Object obj2, ExtensionRegistryLite extensionRegistryLite, CodedInputStreamReader codedInputStreamReader) {
        long L = L(i) & 1048575;
        Object h = UnsafeUtil.c.h(L, obj);
        MapFieldSchema mapFieldSchema = this.m;
        if (h == null) {
            ((MapFieldSchemaLite) mapFieldSchema).getClass();
            h = MapFieldLite.k.b();
            UnsafeUtil.o(obj, L, h);
        } else {
            MapFieldSchemaLite mapFieldSchemaLite = (MapFieldSchemaLite) mapFieldSchema;
            mapFieldSchemaLite.getClass();
            if (!((MapFieldLite) h).j) {
                mapFieldSchemaLite.getClass();
                MapFieldLite b = MapFieldLite.k.b();
                mapFieldSchemaLite.a(b, h);
                UnsafeUtil.o(obj, L, b);
                h = b;
            }
        }
        MapFieldSchemaLite mapFieldSchemaLite2 = (MapFieldSchemaLite) mapFieldSchema;
        mapFieldSchemaLite2.getClass();
        MapFieldLite mapFieldLite = (MapFieldLite) h;
        mapFieldSchemaLite2.getClass();
        MapEntryLite.Metadata metadata = ((MapEntryLite) obj2).a;
        codedInputStreamReader.w(2);
        CodedInputStream codedInputStream = codedInputStreamReader.a;
        int e = codedInputStream.e(codedInputStream.v());
        Object obj3 = metadata.c;
        Object obj4 = "";
        Object obj5 = obj3;
        while (true) {
            try {
                int a = codedInputStreamReader.a();
                if (a == Integer.MAX_VALUE || codedInputStream.c()) {
                    break;
                }
                if (a != 1) {
                    if (a != 2) {
                        try {
                            if (!codedInputStreamReader.x()) {
                                throw new IOException("Unable to parse map entry.");
                                break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                            if (!codedInputStreamReader.x()) {
                                throw new IOException("Unable to parse map entry.");
                            }
                        }
                    } else {
                        obj5 = codedInputStreamReader.i(metadata.b, obj3.getClass(), extensionRegistryLite);
                    }
                } else {
                    obj4 = codedInputStreamReader.i(metadata.a, null, null);
                }
            } catch (Throwable th) {
                codedInputStream.d(e);
                throw th;
            }
        }
        mapFieldLite.put(obj4, obj5);
        codedInputStream.d(e);
    }

    public final void s(int i, Object obj, Object obj2) {
        if (!n(i, obj2)) {
            return;
        }
        long L = L(i) & 1048575;
        Unsafe unsafe = o;
        Object object = unsafe.getObject(obj2, L);
        if (object != null) {
            Schema m = m(i);
            if (!n(i, obj)) {
                if (!p(object)) {
                    unsafe.putObject(obj, L, object);
                } else {
                    GeneratedMessageLite i2 = m.i();
                    m.a(i2, object);
                    unsafe.putObject(obj, L, i2);
                }
                G(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, L);
            if (!p(object2)) {
                GeneratedMessageLite i3 = m.i();
                m.a(i3, object2);
                unsafe.putObject(obj, L, i3);
                object2 = i3;
            }
            m.a(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.a[i] + " is present but null: " + obj2);
    }

    public final void t(int i, Object obj, Object obj2) {
        int[] iArr = this.a;
        int i2 = iArr[i];
        if (!q(i2, i, obj2)) {
            return;
        }
        long L = L(i) & 1048575;
        Unsafe unsafe = o;
        Object object = unsafe.getObject(obj2, L);
        if (object != null) {
            Schema m = m(i);
            if (!q(i2, i, obj)) {
                if (!p(object)) {
                    unsafe.putObject(obj, L, object);
                } else {
                    GeneratedMessageLite i3 = m.i();
                    m.a(i3, object);
                    unsafe.putObject(obj, L, i3);
                }
                H(i2, i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, L);
            if (!p(object2)) {
                GeneratedMessageLite i4 = m.i();
                m.a(i4, object2);
                unsafe.putObject(obj, L, i4);
                object2 = i4;
            }
            m.a(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2);
    }

    public final Object u(int i, Object obj) {
        Schema m = m(i);
        long L = L(i) & 1048575;
        if (!n(i, obj)) {
            return m.i();
        }
        Object object = o.getObject(obj, L);
        if (p(object)) {
            return object;
        }
        GeneratedMessageLite i2 = m.i();
        if (object != null) {
            m.a(i2, object);
        }
        return i2;
    }

    public final Object v(int i, int i2, Object obj) {
        Schema m = m(i2);
        if (!q(i, i2, obj)) {
            return m.i();
        }
        Object object = o.getObject(obj, L(i2) & 1048575);
        if (p(object)) {
            return object;
        }
        GeneratedMessageLite i3 = m.i();
        if (object != null) {
            m.a(i3, object);
        }
        return i3;
    }
}
