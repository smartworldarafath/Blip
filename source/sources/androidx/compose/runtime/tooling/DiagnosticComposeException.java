package androidx.compose.runtime.tooling;

import defpackage.q;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.AbstractCollection;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DiagnosticComposeException extends RuntimeException {
    public final ComposeStackTrace j;

    public DiagnosticComposeException(ComposeStackTrace composeStackTrace) {
        this.j = composeStackTrace;
        if (!composeStackTrace.b) {
            int[] iArr = {201, 202, 204, 206, 207, 125, -127, 126665345, 200};
            List list = composeStackTrace.a;
            int size = list.size();
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) list.get(i);
                if (!ArraysKt.b(iArr, composeStackTraceFrame.a)) {
                    if (composeStackTraceFrame.a == 100) {
                        int i3 = i + 2;
                        if (i3 < size && ((ComposeStackTraceFrame) list.get(i3)).a == 1000) {
                            break;
                        } else {
                            CollectionsKt.M(arrayList);
                        }
                    } else {
                        arrayList.add(composeStackTraceFrame);
                    }
                }
                i = i2;
            }
            int size2 = arrayList.size();
            StackTraceElement[] stackTraceElementArr = new StackTraceElement[size2];
            for (int i4 = 0; i4 < size2; i4++) {
                stackTraceElementArr[i4] = new StackTraceElement("$$compose", q.g(((ComposeStackTraceFrame) arrayList.get(i4)).a, "m$"), "SourceFile", 1);
            }
            setStackTrace(stackTraceElementArr);
        }
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Throwable
    public final String getMessage() {
        ComposeStackTrace composeStackTrace = this.j;
        if (composeStackTrace.b) {
            StringBuilder sb = new StringBuilder("Composition stack when thrown:\n");
            ListBuilder o = CollectionsKt.o();
            List i = CollectionsKt.i(composeStackTrace.a);
            int b = ((AbstractCollection) i).b();
            for (int i2 = 0; i2 < b; i2++) {
                ((ComposeStackTraceFrame) i.get(i2)).getClass();
            }
            List i3 = CollectionsKt.i(CollectionsKt.l(o));
            int b2 = ((AbstractCollection) i3).b();
            for (int i4 = 0; i4 < b2; i4++) {
                String str = (String) i3.get(i4);
                sb.append("\tat ");
                sb.append(str);
                sb.append('\n');
            }
            return sb.toString();
        }
        return "Composition stack when thrown:";
    }
}
