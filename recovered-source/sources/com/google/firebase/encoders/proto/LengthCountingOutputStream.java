package com.google.firebase.encoders.proto;

import java.io.OutputStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LengthCountingOutputStream extends OutputStream {
    public long j;

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i >= 0 && i <= bArr.length && i2 >= 0 && (i3 = i + i2) <= bArr.length && i3 >= 0) {
            this.j += i2;
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.j += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.j++;
    }
}
