package androidx.media3.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.util.Util;
import defpackage.jb;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.UUID;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new Object();
    public final SchemeData[] j;
    public int k;
    public final String l;
    public final int m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.media3.common.DrmInitData$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Parcelable.Creator<DrmInitData> {
        @Override // android.os.Parcelable.Creator
        public final DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final DrmInitData[] newArray(int i) {
            return new DrmInitData[i];
        }
    }

    public DrmInitData(Parcel parcel) {
        this.l = parcel.readString();
        SchemeData[] schemeDataArr = (SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR);
        String str = Util.a;
        this.j = schemeDataArr;
        this.m = schemeDataArr.length;
    }

    public final DrmInitData a(String str) {
        if (Objects.equals(this.l, str)) {
            return this;
        }
        return new DrmInitData(str, false, this.j);
    }

    @Override // java.util.Comparator
    public final int compare(SchemeData schemeData, SchemeData schemeData2) {
        SchemeData schemeData3 = schemeData;
        SchemeData schemeData4 = schemeData2;
        UUID uuid = C.a;
        if (uuid.equals(schemeData3.k)) {
            if (uuid.equals(schemeData4.k)) {
                return 0;
            }
            return 1;
        }
        return schemeData3.k.compareTo(schemeData4.k);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && DrmInitData.class == obj.getClass()) {
            DrmInitData drmInitData = (DrmInitData) obj;
            if (Objects.equals(this.l, drmInitData.l) && Arrays.equals(this.j, drmInitData.j)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        if (this.k == 0) {
            String str = this.l;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            this.k = (hashCode * 31) + Arrays.hashCode(this.j);
        }
        return this.k;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.l);
        parcel.writeTypedArray(this.j, 0);
    }

    public DrmInitData(String str, boolean z, SchemeData... schemeDataArr) {
        this.l = str;
        schemeDataArr = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.j = schemeDataArr;
        this.m = schemeDataArr.length;
        Arrays.sort(schemeDataArr, this);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new Object();
        public int j;
        public final UUID k;
        public final String l;
        public final String m;
        public final byte[] n;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.media3.common.DrmInitData$SchemeData$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SchemeData> {
            @Override // android.os.Parcelable.Creator
            public final SchemeData createFromParcel(Parcel parcel) {
                return new SchemeData(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final SchemeData[] newArray(int i) {
                return new SchemeData[i];
            }
        }

        public SchemeData(Parcel parcel) {
            this.k = new UUID(parcel.readLong(), parcel.readLong());
            this.l = parcel.readString();
            String readString = parcel.readString();
            String str = Util.a;
            this.m = readString;
            this.n = parcel.createByteArray();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof SchemeData)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            SchemeData schemeData = (SchemeData) obj;
            if (!Objects.equals(this.l, schemeData.l) || !Objects.equals(this.m, schemeData.m) || !Objects.equals(this.k, schemeData.k) || !Arrays.equals(this.n, schemeData.n)) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int hashCode;
            if (this.j == 0) {
                int hashCode2 = this.k.hashCode() * 31;
                String str = this.l;
                if (str == null) {
                    hashCode = 0;
                } else {
                    hashCode = str.hashCode();
                }
                this.j = Arrays.hashCode(this.n) + jb.c(this.m, (hashCode2 + hashCode) * 31, 31);
            }
            return this.j;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            UUID uuid = this.k;
            parcel.writeLong(uuid.getMostSignificantBits());
            parcel.writeLong(uuid.getLeastSignificantBits());
            parcel.writeString(this.l);
            parcel.writeString(this.m);
            parcel.writeByteArray(this.n);
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr) {
            uuid.getClass();
            this.k = uuid;
            this.l = str;
            str2.getClass();
            this.m = MimeTypes.l(str2);
            this.n = bArr;
        }
    }
}
