package com.squareup.wire;

import okio.Utf8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonString$1 extends ProtoAdapter<String> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return ((ByteArrayProtoReader32) protoReader32).m();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return protoReader.n();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        String str = (String) obj;
        protoWriter.getClass();
        str.getClass();
        protoWriter.a.f0(str);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        char c;
        String str = (String) obj;
        reverseProtoWriter.getClass();
        str.getClass();
        int length = str.length() - 1;
        while (length >= 0) {
            int i = length - 1;
            char charAt = str.charAt(length);
            if (charAt < 128) {
                reverseProtoWriter.c(1);
                int i2 = reverseProtoWriter.e;
                byte[] bArr = reverseProtoWriter.d;
                int i3 = i2 - 1;
                bArr[i3] = (byte) charAt;
                int max = Math.max(-1, i - i3);
                int i4 = i3;
                length = i;
                while (length > max) {
                    char charAt2 = str.charAt(length);
                    if (charAt2 >= 128) {
                        break;
                    }
                    length--;
                    i4--;
                    bArr[i4] = (byte) charAt2;
                }
                reverseProtoWriter.e = i4;
            } else {
                if (charAt < 2048) {
                    reverseProtoWriter.c(2);
                    byte[] bArr2 = reverseProtoWriter.d;
                    int i5 = reverseProtoWriter.e;
                    int i6 = i5 - 1;
                    reverseProtoWriter.e = i6;
                    bArr2[i6] = (byte) (128 | (charAt & '?'));
                    int i7 = i5 - 2;
                    reverseProtoWriter.e = i7;
                    bArr2[i7] = (byte) ((charAt >> 6) | 192);
                } else if (charAt >= 55296 && charAt <= 57343) {
                    if (i >= 0) {
                        c = str.charAt(i);
                    } else {
                        c = 65535;
                    }
                    if (c <= 56319 && 56320 <= charAt && charAt < 57344) {
                        length -= 2;
                        int i8 = (((c & 1023) << 10) | (charAt & 1023)) + 65536;
                        reverseProtoWriter.c(4);
                        byte[] bArr3 = reverseProtoWriter.d;
                        int i9 = reverseProtoWriter.e;
                        int i10 = i9 - 1;
                        reverseProtoWriter.e = i10;
                        bArr3[i10] = (byte) ((i8 & 63) | 128);
                        int i11 = i9 - 2;
                        reverseProtoWriter.e = i11;
                        bArr3[i11] = (byte) (((i8 >> 6) & 63) | 128);
                        int i12 = i9 - 3;
                        reverseProtoWriter.e = i12;
                        bArr3[i12] = (byte) (128 | (63 & (i8 >> 12)));
                        int i13 = i9 - 4;
                        reverseProtoWriter.e = i13;
                        bArr3[i13] = (byte) ((i8 >> 18) | 240);
                    } else {
                        reverseProtoWriter.c(1);
                        byte[] bArr4 = reverseProtoWriter.d;
                        int i14 = reverseProtoWriter.e - 1;
                        reverseProtoWriter.e = i14;
                        bArr4[i14] = 63;
                    }
                } else {
                    reverseProtoWriter.c(3);
                    byte[] bArr5 = reverseProtoWriter.d;
                    int i15 = reverseProtoWriter.e;
                    int i16 = i15 - 1;
                    reverseProtoWriter.e = i16;
                    bArr5[i16] = (byte) ((charAt & '?') | 128);
                    int i17 = i15 - 2;
                    reverseProtoWriter.e = i17;
                    bArr5[i17] = (byte) (128 | (63 & (charAt >> 6)));
                    int i18 = i15 - 3;
                    reverseProtoWriter.e = i18;
                    bArr5[i18] = (byte) ((charAt >> '\f') | 224);
                }
                length = i;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        String str = (String) obj;
        str.getClass();
        return (int) Utf8.a(str);
    }
}
