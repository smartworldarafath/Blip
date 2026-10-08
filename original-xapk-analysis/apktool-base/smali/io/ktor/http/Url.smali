.class public final Lio/ktor/http/Url;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/http/Url$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/http/Url$Companion;


# instance fields
.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Lio/ktor/http/URLProtocol;

.field public final p:Lio/ktor/http/URLProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/http/Url$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/http/Url;->Companion:Lio/ktor/http/Url$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/util/ArrayList;Lio/ktor/http/Parameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lio/ktor/http/Url;->j:Ljava/lang/String;

    .line 14
    .line 15
    iput p3, p0, Lio/ktor/http/Url;->k:I

    .line 16
    .line 17
    iput-object p7, p0, Lio/ktor/http/Url;->l:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p8, p0, Lio/ktor/http/Url;->m:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p9, p0, Lio/ktor/http/Url;->n:Ljava/lang/String;

    .line 22
    .line 23
    if-ltz p3, :cond_1

    .line 24
    .line 25
    const/high16 p2, 0x10000

    .line 26
    .line 27
    if-ge p3, p2, :cond_1

    .line 28
    .line 29
    new-instance p2, Ly4;

    .line 30
    .line 31
    const/4 p3, 0x1

    .line 32
    invoke-direct {p2, p3, p4}, Ly4;-><init>(ILjava/util/ArrayList;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lio/ktor/http/Url;->o:Lio/ktor/http/URLProtocol;

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    sget-object p1, Lio/ktor/http/URLProtocol;->l:Lio/ktor/http/URLProtocol;

    .line 43
    .line 44
    :cond_0
    iput-object p1, p0, Lio/ktor/http/Url;->p:Lio/ktor/http/URLProtocol;

    .line 45
    .line 46
    new-instance p1, Ltg;

    .line 47
    .line 48
    const/4 p2, 0x4

    .line 49
    invoke-direct {p1, p2, p4, p0}, Ltg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 53
    .line 54
    .line 55
    new-instance p1, Lei;

    .line 56
    .line 57
    const/4 p4, 0x0

    .line 58
    invoke-direct {p1, p0, p4}, Lei;-><init>(Lio/ktor/http/Url;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 62
    .line 63
    .line 64
    new-instance p1, Lei;

    .line 65
    .line 66
    invoke-direct {p1, p0, p3}, Lei;-><init>(Lio/ktor/http/Url;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    new-instance p1, Lei;

    .line 73
    .line 74
    const/4 p3, 0x2

    .line 75
    invoke-direct {p1, p0, p3}, Lei;-><init>(Lio/ktor/http/Url;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 79
    .line 80
    .line 81
    new-instance p1, Lei;

    .line 82
    .line 83
    const/4 p3, 0x3

    .line 84
    invoke-direct {p1, p0, p3}, Lei;-><init>(Lio/ktor/http/Url;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 88
    .line 89
    .line 90
    new-instance p1, Lei;

    .line 91
    .line 92
    invoke-direct {p1, p0, p2}, Lei;-><init>(Lio/ktor/http/Url;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    const-string p0, "Port must be between 0 and 65535, or 0 if not set. Provided: "

    .line 100
    .line 101
    invoke-static {p3, p0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const/4 p0, 0x0

    .line 109
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const-class v0, Lio/ktor/http/Url;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    check-cast p1, Lio/ktor/http/Url;

    .line 17
    .line 18
    iget-object p0, p0, Lio/ktor/http/Url;->n:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p1, Lio/ktor/http/Url;->n:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/http/Url;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/ktor/http/Url;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
