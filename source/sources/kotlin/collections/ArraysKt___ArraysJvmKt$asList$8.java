package kotlin.collections;

import java.util.RandomAccess;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ArraysKt___ArraysJvmKt$asList$8 extends AbstractList<Character> implements RandomAccess {
    public final /* synthetic */ char[] j;

    public ArraysKt___ArraysJvmKt$asList$8(char[] cArr) {
        this.j = cArr;
    }

    @Override // kotlin.collections.AbstractCollection
    public final int b() {
        return this.j.length;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (obj instanceof Character) {
            char charValue = ((Character) obj).charValue();
            char[] cArr = this.j;
            int length = cArr.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    if (charValue == cArr[i]) {
                        break;
                    }
                    i++;
                } else {
                    i = -1;
                    break;
                }
            }
            if (i >= 0) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        return Character.valueOf(this.j[i]);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Character)) {
            return -1;
        }
        char charValue = ((Character) obj).charValue();
        char[] cArr = this.j;
        int length = cArr.length;
        for (int i = 0; i < length; i++) {
            if (charValue == cArr[i]) {
                return i;
            }
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        if (this.j.length == 0) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj instanceof Character) {
            char charValue = ((Character) obj).charValue();
            char[] cArr = this.j;
            int length = cArr.length - 1;
            if (length >= 0) {
                while (true) {
                    int i = length - 1;
                    if (charValue == cArr[length]) {
                        return length;
                    }
                    if (i < 0) {
                        break;
                    }
                    length = i;
                }
            }
        }
        return -1;
    }
}
