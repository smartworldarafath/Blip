package net.blip.libblip;

import java.util.Comparator;
import java.util.LinkedHashMap;
import kotlin.comparisons.ComparisonsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Users_DerivedKt$recentContacts$$inlined$compareByDescending$1<T> implements Comparator {
    public final /* synthetic */ LinkedHashMap j;

    public Users_DerivedKt$recentContacts$$inlined$compareByDescending$1(LinkedHashMap linkedHashMap) {
        this.j = linkedHashMap;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        String str = ((User) obj2).m;
        LinkedHashMap linkedHashMap = this.j;
        return ComparisonsKt.b((Comparable) linkedHashMap.get(str), (Comparable) linkedHashMap.get(((User) obj).m));
    }
}
