package net.blip.libblip;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Users_DerivedKt$recentContacts$$inlined$thenBy$1<T> implements Comparator {
    public final /* synthetic */ Users_DerivedKt$recentContacts$$inlined$compareByDescending$1 j;

    public Users_DerivedKt$recentContacts$$inlined$thenBy$1(Users_DerivedKt$recentContacts$$inlined$compareByDescending$1 users_DerivedKt$recentContacts$$inlined$compareByDescending$1) {
        this.j = users_DerivedKt$recentContacts$$inlined$compareByDescending$1;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compare = this.j.compare(obj, obj2);
        if (compare != 0) {
            return compare;
        }
        return ComparisonsKt.b(User_DerivedKt.a((User) obj), User_DerivedKt.a((User) obj2));
    }
}
