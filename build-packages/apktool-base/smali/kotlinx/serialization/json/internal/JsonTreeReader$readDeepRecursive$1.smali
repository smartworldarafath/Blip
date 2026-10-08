.class final Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlin/DeepRecursiveScope<",
        "Lkotlin/Unit;",
        "Lkotlinx/serialization/json/JsonElement;",
        ">;",
        "Lkotlin/Unit;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlinx/serialization/json/JsonElement;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1"
    f = "JsonTreeReader.kt"
    l = {
        0x71
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Lkotlin/DeepRecursiveScope;

.field public final synthetic n:Lkotlinx/serialization/json/internal/JsonTreeReader;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->n:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/DeepRecursiveScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    new-instance p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    .line 8
    .line 9
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->n:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 10
    .line 11
    invoke-direct {p2, p0, p3}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->m:Lkotlin/DeepRecursiveScope;

    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p2, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->n:Lkotlinx/serialization/json/internal/JsonTreeReader;

    .line 2
    .line 3
    iget-object v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader;->a:Lkotlinx/serialization/json/internal/StringJsonLexer;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->m:Lkotlin/DeepRecursiveScope;

    .line 6
    .line 7
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v4, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->l:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    if-ne v4, v6, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v5

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->l()B

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, v6, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v6}, Lkotlinx/serialization/json/internal/JsonTreeReader;->d(Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    const/4 v4, 0x0

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Lkotlinx/serialization/json/internal/JsonTreeReader;->d(Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_3
    const/4 v7, 0x6

    .line 50
    if-ne p1, v7, :cond_5

    .line 51
    .line 52
    iput-object v5, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->m:Lkotlin/DeepRecursiveScope;

    .line 53
    .line 54
    iput v6, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->l:I

    .line 55
    .line 56
    invoke-static {v0, v2, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->a(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/DeepRecursiveScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne p1, v3, :cond_4

    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_4
    :goto_0
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_5
    const/16 p0, 0x8

    .line 67
    .line 68
    if-ne p1, p0, :cond_6

    .line 69
    .line 70
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->c()Lkotlinx/serialization/json/JsonArray;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_6
    const-string p0, "Can\'t begin reading element, unexpected token"

    .line 76
    .line 77
    invoke-static {v1, p0, v4, v5, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    throw v5
.end method
