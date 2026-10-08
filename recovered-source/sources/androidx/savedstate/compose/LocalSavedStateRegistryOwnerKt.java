package androidx.savedstate.compose;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.x9;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import kotlin.Deprecated;
import kotlin.Result;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LocalSavedStateRegistryOwnerKt {
    public static final ProvidableCompositionLocal a;

    /* JADX WARN: Code restructure failed: missing block: B:20:0x002e, code lost:
    
        r1 = r1.invoke(null, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        if ((r1 instanceof androidx.compose.runtime.ProvidableCompositionLocal) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0036, code lost:
    
        r1 = (androidx.compose.runtime.ProvidableCompositionLocal) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.runtime.CompositionLocal] */
    static {
        Object failure;
        Object obj = null;
        try {
            ClassLoader classLoader = SavedStateRegistryOwner.class.getClassLoader();
            classLoader.getClass();
            Method method = classLoader.loadClass("androidx.compose.ui.platform.AndroidCompositionLocals_androidKt").getMethod("getLocalSavedStateRegistryOwner", null);
            Annotation[] annotations = method.getAnnotations();
            annotations.getClass();
            int length = annotations.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (annotations[i] instanceof Deprecated) {
                    break;
                } else {
                    i++;
                }
            }
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        if (!(failure instanceof Result.Failure)) {
            obj = failure;
        }
        ProvidableCompositionLocal providableCompositionLocal = (ProvidableCompositionLocal) obj;
        if (providableCompositionLocal == null) {
            providableCompositionLocal = new CompositionLocal(new x9(17));
        }
        a = providableCompositionLocal;
    }
}
