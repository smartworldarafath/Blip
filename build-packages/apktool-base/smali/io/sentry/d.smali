.class public final synthetic Lio/sentry/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonObjectDeserializer$NextValue;
.implements Lio/sentry/Scope$IWithSession;
.implements Lio/sentry/util/LazyEvaluator$Evaluator;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/d;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic d()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public static synthetic e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public static synthetic f(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public static synthetic h(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public static synthetic i()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ClassCastException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method


# virtual methods
.method public a(Lio/sentry/Session;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public c()Ljava/lang/Object;
    .locals 6

    .line 1
    iget p0, p0, Lio/sentry/d;->j:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-static {}, Lio/sentry/util/SentryRandom;->a()Lio/sentry/util/Random;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    new-array v1, v0, [B

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lio/sentry/util/Random;->b([B)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x6

    .line 18
    aget-byte v2, v1, p0

    .line 19
    .line 20
    and-int/lit8 v2, v2, 0xf

    .line 21
    .line 22
    int-to-byte v2, v2

    .line 23
    aput-byte v2, v1, p0

    .line 24
    .line 25
    or-int/lit8 v2, v2, 0x40

    .line 26
    .line 27
    int-to-byte v2, v2

    .line 28
    aput-byte v2, v1, p0

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    :goto_0
    if-ge p0, v0, :cond_0

    .line 34
    .line 35
    shl-long/2addr v2, v0

    .line 36
    aget-byte v4, v1, p0

    .line 37
    .line 38
    and-int/lit16 v4, v4, 0xff

    .line 39
    .line 40
    int-to-long v4, v4

    .line 41
    or-long/2addr v2, v4

    .line 42
    add-int/lit8 p0, p0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 p0, 0x10

    .line 46
    .line 47
    new-array p0, p0, [C

    .line 48
    .line 49
    invoke-static {p0, v2, v3}, Lio/sentry/util/UUIDStringUtils;->a([CJ)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_1
    sget-object p0, Lio/sentry/SentryOptions;->DEFAULT_PROPAGATION_TARGETS:Ljava/lang/String;

    .line 59
    .line 60
    new-instance p0, Lio/sentry/SentryAutoDateProvider;

    .line 61
    .line 62
    invoke-direct {p0}, Lio/sentry/SentryAutoDateProvider;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_2
    sget-object p0, Lio/sentry/NoOpScopes;->b:Lio/sentry/NoOpScopes;

    .line 67
    .line 68
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_3
    sget-object p0, Lio/sentry/NoOpScope;->b:Lio/sentry/NoOpScope;

    .line 74
    .line 75
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
