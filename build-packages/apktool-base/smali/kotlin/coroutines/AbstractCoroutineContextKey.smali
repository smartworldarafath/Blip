.class public abstract Lkotlin/coroutines/AbstractCoroutineContextKey;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$Key<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation


# instance fields
.field public final j:Lkotlin/jvm/functions/Function1;

.field public final k:Lkotlin/coroutines/CoroutineContext$Key;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lkotlin/coroutines/AbstractCoroutineContextKey;->j:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    instance-of p2, p1, Lkotlin/coroutines/AbstractCoroutineContextKey;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    check-cast p1, Lkotlin/coroutines/AbstractCoroutineContextKey;

    .line 14
    .line 15
    iget-object p1, p1, Lkotlin/coroutines/AbstractCoroutineContextKey;->k:Lkotlin/coroutines/CoroutineContext$Key;

    .line 16
    .line 17
    :cond_0
    iput-object p1, p0, Lkotlin/coroutines/AbstractCoroutineContextKey;->k:Lkotlin/coroutines/CoroutineContext$Key;

    .line 18
    .line 19
    return-void
.end method
