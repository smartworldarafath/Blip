.class public final Lcom/google/firebase/installations/Utils;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static c:Lcom/google/firebase/installations/Utils;


# instance fields
.field public final a:Lcom/google/firebase/installations/time/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\AA[\\w-]{38}\\z"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/firebase/installations/Utils;->b:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/installations/time/SystemClock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/installations/Utils;->a:Lcom/google/firebase/installations/time/Clock;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->e()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->b()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    add-long/2addr v2, v0

    .line 21
    iget-object p0, p0, Lcom/google/firebase/installations/Utils;->a:Lcom/google/firebase/installations/time/Clock;

    .line 22
    .line 23
    check-cast p0, Lcom/google/firebase/installations/time/SystemClock;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    const-wide/16 v0, 0x3e8

    .line 33
    .line 34
    div-long/2addr p0, v0

    .line 35
    const-wide/16 v0, 0xe10

    .line 36
    .line 37
    add-long/2addr p0, v0

    .line 38
    cmp-long p0, v2, p0

    .line 39
    .line 40
    if-gez p0, :cond_1

    .line 41
    .line 42
    :goto_0
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return p0
.end method
