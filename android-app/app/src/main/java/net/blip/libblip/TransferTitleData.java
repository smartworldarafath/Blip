package net.blip.libblip;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferTitleData {
    public final int a;
    public final String b;

    public TransferTitleData(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransferTitleData)) {
            return false;
        }
        TransferTitleData transferTitleData = (TransferTitleData) obj;
        if (this.a == transferTitleData.a && Intrinsics.a(this.b, transferTitleData.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.a) * 31;
        String str = this.b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "TransferTitleData(numberOfItems=" + this.a + ", firstItemName=" + this.b + ")";
    }
}
