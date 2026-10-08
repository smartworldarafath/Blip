package com.google.firebase.concurrent;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SequentialExecutor implements Executor {
    public static final Logger o = Logger.getLogger(SequentialExecutor.class.getName());
    public final Executor j;
    public final ArrayDeque k = new ArrayDeque();
    public WorkerRunningState l = WorkerRunningState.j;
    public long m = 0;
    public final QueueWorker n = new QueueWorker();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class QueueWorker implements Runnable {
        public Runnable j;

        public QueueWorker() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0046, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
            r2 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
        
            r9.j.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0070, code lost:
        
            r9.j = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0072, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0054, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
        
            com.google.firebase.concurrent.SequentialExecutor.o.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r9.j, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x003d, code lost:
        
            if (r1 == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a() {
            boolean z = false;
            boolean z2 = false;
            while (true) {
                try {
                    synchronized (SequentialExecutor.this.k) {
                        if (!z) {
                            SequentialExecutor sequentialExecutor = SequentialExecutor.this;
                            WorkerRunningState workerRunningState = sequentialExecutor.l;
                            WorkerRunningState workerRunningState2 = WorkerRunningState.m;
                            if (workerRunningState != workerRunningState2) {
                                sequentialExecutor.m++;
                                sequentialExecutor.l = workerRunningState2;
                                z = true;
                            }
                        }
                        Runnable runnable = (Runnable) SequentialExecutor.this.k.poll();
                        this.j = runnable;
                        if (runnable == null) {
                            SequentialExecutor.this.l = WorkerRunningState.j;
                        }
                    }
                    if (!z2) {
                        return;
                    }
                } finally {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                a();
            } catch (Error e) {
                synchronized (SequentialExecutor.this.k) {
                    SequentialExecutor.this.l = WorkerRunningState.j;
                    throw e;
                }
            }
        }

        public final String toString() {
            Runnable runnable = this.j;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + SequentialExecutor.this.l + "}";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class WorkerRunningState {
        public static final WorkerRunningState j;
        public static final WorkerRunningState k;
        public static final WorkerRunningState l;
        public static final WorkerRunningState m;
        public static final /* synthetic */ WorkerRunningState[] n;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.firebase.concurrent.SequentialExecutor$WorkerRunningState] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.firebase.concurrent.SequentialExecutor$WorkerRunningState] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, com.google.firebase.concurrent.SequentialExecutor$WorkerRunningState] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, com.google.firebase.concurrent.SequentialExecutor$WorkerRunningState] */
        static {
            ?? r0 = new Enum("IDLE", 0);
            j = r0;
            ?? r1 = new Enum("QUEUING", 1);
            k = r1;
            ?? r2 = new Enum("QUEUED", 2);
            l = r2;
            ?? r3 = new Enum("RUNNING", 3);
            m = r3;
            n = new WorkerRunningState[]{r0, r1, r2, r3};
        }

        public static WorkerRunningState valueOf(String str) {
            return (WorkerRunningState) Enum.valueOf(WorkerRunningState.class, str);
        }

        public static WorkerRunningState[] values() {
            return (WorkerRunningState[]) n.clone();
        }
    }

    public SequentialExecutor(Executor executor) {
        Preconditions.e(executor);
        this.j = executor;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0066 A[ADDED_TO_REGION] */
    @Override // java.util.concurrent.Executor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void execute(final Runnable runnable) {
        WorkerRunningState workerRunningState;
        boolean z;
        Preconditions.e(runnable);
        synchronized (this.k) {
            WorkerRunningState workerRunningState2 = this.l;
            if (workerRunningState2 != WorkerRunningState.m && workerRunningState2 != (workerRunningState = WorkerRunningState.l)) {
                long j = this.m;
                Runnable runnable2 = new Runnable() { // from class: com.google.firebase.concurrent.SequentialExecutor.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        runnable.run();
                    }

                    public final String toString() {
                        return runnable.toString();
                    }
                };
                this.k.add(runnable2);
                WorkerRunningState workerRunningState3 = WorkerRunningState.k;
                this.l = workerRunningState3;
                try {
                    this.j.execute(this.n);
                    if (this.l == workerRunningState3) {
                        synchronized (this.k) {
                            try {
                                if (this.m == j && this.l == workerRunningState3) {
                                    this.l = workerRunningState;
                                }
                            } finally {
                            }
                        }
                        return;
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.k) {
                        try {
                            WorkerRunningState workerRunningState4 = this.l;
                            if (workerRunningState4 != WorkerRunningState.j) {
                                if (workerRunningState4 == WorkerRunningState.k) {
                                }
                                z = false;
                                if ((e instanceof RejectedExecutionException) || z) {
                                    throw e;
                                }
                            }
                            if (this.k.removeLastOccurrence(runnable2)) {
                                z = true;
                                if (e instanceof RejectedExecutionException) {
                                }
                                throw e;
                            }
                            z = false;
                            if (e instanceof RejectedExecutionException) {
                            }
                            throw e;
                        } finally {
                        }
                    }
                    return;
                }
            }
            this.k.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.j + "}";
    }
}
