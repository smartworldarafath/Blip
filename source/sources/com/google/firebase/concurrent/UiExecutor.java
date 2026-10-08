package com.google.firebase.concurrent;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UiExecutor implements Executor {
    public static final UiExecutor j;
    public static final Handler k;
    public static final /* synthetic */ UiExecutor[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.firebase.concurrent.UiExecutor] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        j = r0;
        l = new UiExecutor[]{r0};
        k = new Handler(Looper.getMainLooper());
    }

    public static UiExecutor valueOf(String str) {
        return (UiExecutor) Enum.valueOf(UiExecutor.class, str);
    }

    public static UiExecutor[] values() {
        return (UiExecutor[]) l.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        k.post(runnable);
    }
}
