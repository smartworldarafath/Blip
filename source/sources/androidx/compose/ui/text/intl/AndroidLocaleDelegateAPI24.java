package androidx.compose.ui.text.intl;

import androidx.compose.ui.text.platform.SynchronizedObject;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidLocaleDelegateAPI24 {
    public android.os.LocaleList a;
    public LocaleList b;
    public final SynchronizedObject c = new Object();

    public final LocaleList a() {
        android.os.LocaleList localeList = android.os.LocaleList.getDefault();
        synchronized (this.c) {
            LocaleList localeList2 = this.b;
            if (localeList2 != null && localeList == this.a) {
                return localeList2;
            }
            int size = localeList.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(new Locale(localeList.get(i)));
            }
            LocaleList localeList3 = new LocaleList(arrayList);
            this.a = localeList;
            this.b = localeList3;
            return localeList3;
        }
    }
}
