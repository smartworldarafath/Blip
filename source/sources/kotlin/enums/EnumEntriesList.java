package kotlin.enums;

import java.io.Serializable;
import java.lang.Enum;
import java.util.RandomAccess;
import kotlin.collections.AbstractList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EnumEntriesList<T extends Enum<T>> extends AbstractList<T> implements EnumEntries<T>, RandomAccess, Serializable {
    public final Enum[] j;

    public EnumEntriesList(Enum[] enumArr) {
        enumArr.getClass();
        this.j = enumArr;
    }

    @Override // kotlin.collections.AbstractCollection
    public final int b() {
        return this.j.length;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        Enum r2;
        if (obj instanceof Enum) {
            Enum r3 = (Enum) obj;
            int ordinal = r3.ordinal();
            Enum[] enumArr = this.j;
            enumArr.getClass();
            if (ordinal >= 0 && ordinal < enumArr.length) {
                r2 = enumArr[ordinal];
            } else {
                r2 = null;
            }
            if (r2 == r3) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        Enum[] enumArr = this.j;
        AbstractList.Companion.b(i, enumArr.length);
        return enumArr[i];
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        Enum r3;
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r4 = (Enum) obj;
        int ordinal = r4.ordinal();
        Enum[] enumArr = this.j;
        enumArr.getClass();
        if (ordinal >= 0 && ordinal < enumArr.length) {
            r3 = enumArr[ordinal];
        } else {
            r3 = null;
        }
        if (r3 != r4) {
            return -1;
        }
        return ordinal;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        Enum r3;
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r4 = (Enum) obj;
        int ordinal = r4.ordinal();
        Enum[] enumArr = this.j;
        enumArr.getClass();
        if (ordinal >= 0 && ordinal < enumArr.length) {
            r3 = enumArr[ordinal];
        } else {
            r3 = null;
        }
        if (r3 != r4) {
            return -1;
        }
        return ordinal;
    }
}
