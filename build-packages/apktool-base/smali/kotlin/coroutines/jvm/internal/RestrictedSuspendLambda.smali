.class public abstract Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.super Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/internal/FunctionBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;",
        "Lkotlin/jvm/internal/FunctionBase<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:I


# direct methods
.method public constructor <init>(ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;->k:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 0

    .line 1
    iget p0, p0, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->j:Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/ReflectionFactory;->a(Lkotlin/jvm/internal/FunctionBase;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-super {p0}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
