package androidx.room.util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ForeignKeyWithSequence implements Comparable<ForeignKeyWithSequence> {
    public final int j;
    public final int k;
    public final String l;
    public final String m;

    public ForeignKeyWithSequence(int i, int i2, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.j = i;
        this.k = i2;
        this.l = str;
        this.m = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(ForeignKeyWithSequence foreignKeyWithSequence) {
        ForeignKeyWithSequence foreignKeyWithSequence2 = foreignKeyWithSequence;
        foreignKeyWithSequence2.getClass();
        int i = this.j - foreignKeyWithSequence2.j;
        if (i == 0) {
            return this.k - foreignKeyWithSequence2.k;
        }
        return i;
    }
}
