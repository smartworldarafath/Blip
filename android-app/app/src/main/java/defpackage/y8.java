package defpackage;

import android.text.TextUtils;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import io.sentry.protocol.SentryId;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.StringUtils;
import java.nio.charset.Charset;
import java.util.concurrent.ExecutionException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class y8 implements Continuation, LazyEvaluator.Evaluator {
    public final /* synthetic */ int j;
    public final /* synthetic */ String k;

    public /* synthetic */ y8(SentryId sentryId, String str) {
        this.j = 1;
        this.k = str;
    }

    @Override // io.sentry.util.LazyEvaluator.Evaluator
    public Object c() {
        int i = this.j;
        String str = this.k;
        switch (i) {
            case 1:
                SentryId sentryId = SentryId.k;
                Charset charset = StringUtils.a;
                if (str.equals("0000-0000")) {
                    str = "00000000-0000-0000-0000-000000000000";
                }
                return str.replace("-", "");
            default:
                SentryId sentryId2 = SentryId.k;
                return str;
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object g(Task task) {
        if (task.k()) {
            String str = (String) task.g();
            if (!TextUtils.isEmpty(str)) {
                String str2 = this.k;
                if (str.endsWith(str2)) {
                    return str2;
                }
            }
            throw new ExecutionException(new IllegalArgumentException("Unexpected Error: FID NOT matching!"));
        }
        throw new ExecutionException(task.f());
    }

    public /* synthetic */ y8(String str, int i) {
        this.j = i;
        this.k = str;
    }
}
