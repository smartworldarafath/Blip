.class public final Lnet/blip/shared/ScratchFileWriter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/shared/ScratchFileWriter;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Lnet/blip/shared/ScratchFileWriter;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/text/StringsKt;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/16 p2, 0x20

    .line 27
    .line 28
    invoke-static {p2, p1}, Lkotlin/text/StringsKt;->Q(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    :goto_0
    move-object p2, p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    if-nez p2, :cond_1

    .line 43
    .line 44
    const-string p2, "Text"

    .line 45
    .line 46
    :cond_1
    const-string p1, "txt"

    .line 47
    .line 48
    invoke-virtual {p0, v0, p2, p1, p3}, Lnet/blip/shared/ScratchFileWriter;->a([BLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method


# virtual methods
.method public final a([BLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p4, Lnet/blip/shared/ScratchFileWriter$write$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lnet/blip/shared/ScratchFileWriter$write$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/shared/ScratchFileWriter$write$1;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/blip/shared/ScratchFileWriter$write$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/shared/ScratchFileWriter$write$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lnet/blip/shared/ScratchFileWriter$write$1;-><init>(Lnet/blip/shared/ScratchFileWriter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lnet/blip/shared/ScratchFileWriter$write$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/shared/ScratchFileWriter$write$1;->p:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Lnet/blip/shared/ScratchFileWriter$write$1;->m:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v4

    .line 49
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-string p4, "|\\?*<\":>+[]/\'"

    .line 53
    .line 54
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v2, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;

    .line 62
    .line 63
    invoke-direct {v2, p4}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$8;-><init>([C)V

    .line 64
    .line 65
    .line 66
    invoke-static {p2}, Lkotlin/text/StringsKt;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const-string p4, "-"

    .line 75
    .line 76
    invoke-static {p2, p4, v2}, Lnet/blip/shared/StringKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    sget-object p4, Lkotlin/random/Random;->k:Lkotlin/random/AbstractPlatformRandom;

    .line 81
    .line 82
    invoke-virtual {p4}, Lkotlin/random/AbstractPlatformRandom;->a()I

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    const-string v2, "scratch-"

    .line 87
    .line 88
    invoke-static {p4, v2}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p4

    .line 92
    filled-new-array {p4}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    iget-object p0, p0, Lnet/blip/shared/ScratchFileWriter;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {p0, p4}, Lnet/blip/libblip/PathUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string p4, "."

    .line 103
    .line 104
    invoke-static {p2, p4, p3}, Ljb;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    filled-new-array {p2}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p0, p2}, Lnet/blip/libblip/PathUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    sget-object p3, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 117
    .line 118
    sget-object p3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->l:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 119
    .line 120
    new-instance p4, Lnet/blip/shared/ScratchFileWriter$write$2;

    .line 121
    .line 122
    invoke-direct {p4, p0, p2, p1, v4}, Lnet/blip/shared/ScratchFileWriter$write$2;-><init>(Ljava/lang/String;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V

    .line 123
    .line 124
    .line 125
    iput-object p2, v0, Lnet/blip/shared/ScratchFileWriter$write$1;->m:Ljava/lang/String;

    .line 126
    .line 127
    iput v3, v0, Lnet/blip/shared/ScratchFileWriter$write$1;->p:I

    .line 128
    .line 129
    invoke-static {p3, p4, v0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-ne p0, v1, :cond_3

    .line 134
    .line 135
    return-object v1

    .line 136
    :cond_3
    return-object p2
.end method
