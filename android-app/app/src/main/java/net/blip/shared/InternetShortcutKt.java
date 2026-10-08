package net.blip.shared;

import io.ktor.http.URLUtilsKt;
import io.ktor.http.Url;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InternetShortcutKt {
    public static final InternetShortcut a(String str, String str2) {
        Object failure;
        str.getClass();
        List C = CollectionsKt.C("http://", "https://");
        if (!C.isEmpty()) {
            Iterator it = C.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (kotlin.text.StringsKt.J(str, (String) it.next(), true)) {
                    if (!kotlin.text.StringsKt.j(str, ' ')) {
                        try {
                            failure = URLUtilsKt.a(str);
                        } catch (Throwable th) {
                            failure = new Result.Failure(th);
                        }
                        if (failure instanceof Result.Failure) {
                            failure = null;
                        }
                        Url url = (Url) failure;
                        if (url != null) {
                            return new InternetShortcut(url, str2);
                        }
                    }
                }
            }
        }
        return null;
    }
}
