.class public final synthetic Lio/sentry/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonObjectDeserializer$NextValue;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lio/sentry/JsonObjectReader;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/JsonObjectDeserializer;Lio/sentry/JsonObjectReader;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lio/sentry/c;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lio/sentry/c;->k:Lio/sentry/JsonObjectReader;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/JsonObjectReader;I)V
    .locals 0

    .line 10
    iput p2, p0, Lio/sentry/c;->j:I

    iput-object p1, p0, Lio/sentry/c;->k:Lio/sentry/JsonObjectReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lio/sentry/c;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/c;->k:Lio/sentry/JsonObjectReader;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/JsonObjectReader;->n()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/JsonObjectReader;->nextInt()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lio/sentry/JsonObjectReader;->nextDouble()D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    invoke-virtual {p0}, Lio/sentry/JsonObjectReader;->nextLong()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_0
    return-object p0

    .line 44
    :pswitch_1
    invoke-virtual {p0}, Lio/sentry/JsonObjectReader;->r()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
