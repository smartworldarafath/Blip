.class public abstract Lcom/google/firebase/messaging/threads/PoolableExecutors;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/threads/PoolableExecutors$DefaultExecutorFactory;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/google/firebase/messaging/threads/ExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/threads/PoolableExecutors$DefaultExecutorFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/messaging/threads/PoolableExecutors;->a:Lcom/google/firebase/messaging/threads/ExecutorFactory;

    .line 7
    .line 8
    return-void
.end method
