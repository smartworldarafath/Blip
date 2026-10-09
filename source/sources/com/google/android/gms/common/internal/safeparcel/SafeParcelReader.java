package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SafeParcelReader {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ParseException extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ParseException(String str, Parcel parcel) {
            super(r2.toString());
            int dataPosition = parcel.dataPosition();
            int dataSize = parcel.dataSize();
            int length = str.length();
            StringBuilder sb = new StringBuilder(length + 13 + String.valueOf(dataPosition).length() + 6 + String.valueOf(dataSize).length());
            sb.append(str);
            sb.append(" Parcel: pos=");
            sb.append(dataPosition);
            sb.append(" size=");
            sb.append(dataSize);
        }
    }

    public static Bundle a(Parcel parcel, int i) {
        int h = h(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (h == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + h);
        return readBundle;
    }

    public static Parcelable b(Parcel parcel, int i, Parcelable.Creator creator) {
        int h = h(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (h == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + h);
        return parcelable;
    }

    public static String c(Parcel parcel, int i) {
        int h = h(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (h == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + h);
        return readString;
    }

    public static Object[] d(Parcel parcel, int i, Parcelable.Creator creator) {
        int h = h(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (h == 0) {
            return null;
        }
        Object[] createTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + h);
        return createTypedArray;
    }

    public static void e(Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 26);
        sb.append("Overread allowed size end=");
        sb.append(i);
        throw new ParseException(sb.toString(), parcel);
    }

    public static boolean f(Parcel parcel, int i) {
        k(parcel, i, 4);
        if (parcel.readInt() != 0) {
            return true;
        }
        return false;
    }

    public static int g(Parcel parcel, int i) {
        k(parcel, i, 4);
        return parcel.readInt();
    }

    public static int h(Parcel parcel, int i) {
        if ((i & (-65536)) != -65536) {
            return (char) (i >> 16);
        }
        return parcel.readInt();
    }

    public static void i(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + h(parcel, i));
    }

    public static int j(Parcel parcel) {
        int readInt = parcel.readInt();
        int h = h(parcel, readInt);
        char c = (char) readInt;
        int dataPosition = parcel.dataPosition();
        if (c == 20293) {
            int i = h + dataPosition;
            if (i >= dataPosition && i <= parcel.dataSize()) {
                return i;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(dataPosition).length() + 32 + String.valueOf(i).length());
            sb.append("Size read is invalid start=");
            sb.append(dataPosition);
            sb.append(" end=");
            sb.append(i);
            throw new ParseException(sb.toString(), parcel);
        }
        throw new ParseException("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(readInt))), parcel);
    }

    public static void k(Parcel parcel, int i, int i2) {
        int h = h(parcel, i);
        if (h == i2) {
            return;
        }
        String hexString = Integer.toHexString(h);
        int length = String.valueOf(i2).length();
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + length + 19 + String.valueOf(h).length() + 4 + 1);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(h);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }
}
