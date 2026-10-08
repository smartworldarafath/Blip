package kotlinx.serialization.json.internal;

import kotlin.Result;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ArrayPoolsKt {
    public static final int a;

    static {
        Object failure;
        int i;
        Object obj = null;
        try {
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            if (property != null) {
                failure = StringsKt.S(property);
            } else {
                failure = null;
            }
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        if (!(failure instanceof Result.Failure)) {
            obj = failure;
        }
        Integer num = (Integer) obj;
        if (num != null) {
            i = num.intValue();
        } else {
            i = 2097152;
        }
        a = i;
    }
}
