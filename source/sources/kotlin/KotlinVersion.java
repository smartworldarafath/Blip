package kotlin;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class KotlinVersion implements Comparable<KotlinVersion> {
    public static final KotlinVersion k = new KotlinVersion();
    public final int j = 132106;

    @Override // java.lang.Comparable
    public final int compareTo(KotlinVersion kotlinVersion) {
        KotlinVersion kotlinVersion2 = kotlinVersion;
        kotlinVersion2.getClass();
        return this.j - kotlinVersion2.j;
    }

    public final boolean equals(Object obj) {
        KotlinVersion kotlinVersion;
        if (this == obj) {
            return true;
        }
        if (obj instanceof KotlinVersion) {
            kotlinVersion = (KotlinVersion) obj;
        } else {
            kotlinVersion = null;
        }
        if (kotlinVersion != null && this.j == kotlinVersion.j) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.j;
    }

    public final String toString() {
        return "2.4.10";
    }
}
