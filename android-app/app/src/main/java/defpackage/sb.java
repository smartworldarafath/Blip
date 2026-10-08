package defpackage;

import android.os.Bundle;
import androidx.navigation.NavDeepLink;
import kotlin.jvm.functions.Function1;
import kotlin.text.Regex;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class sb implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Bundle k;

    public /* synthetic */ sb(int i, Bundle bundle) {
        this.j = i;
        this.k = bundle;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        boolean containsKey;
        int i = this.j;
        Bundle bundle = this.k;
        String str = (String) obj;
        switch (i) {
            case 0:
                Regex regex = NavDeepLink.m;
                str.getClass();
                containsKey = bundle.containsKey(str);
                break;
            default:
                str.getClass();
                containsKey = bundle.containsKey(str);
                break;
        }
        return Boolean.valueOf(!containsKey);
    }
}
