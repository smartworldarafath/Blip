.class Lcom/google/firebase/installations/GetAuthTokenListener;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/installations/StateListener;


# instance fields
.field public final a:Lcom/google/firebase/installations/Utils;

.field public final b:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/firebase/installations/Utils;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/installations/GetAuthTokenListener;->a:Lcom/google/firebase/installations/Utils;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/installations/GetAuthTokenListener;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/installations/GetAuthTokenListener;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final b(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/installations/GetAuthTokenListener;->a:Lcom/google/firebase/installations/Utils;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/Utils;->a(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_6

    .line 15
    .line 16
    new-instance v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_5

    .line 26
    .line 27
    iput-object v2, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->b()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iput-wide v2, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->b:J

    .line 34
    .line 35
    iget-byte v2, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->c:B

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    or-int/2addr v2, v3

    .line 39
    int-to-byte v2, v2

    .line 40
    iput-byte v2, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->c:B

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->e()J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    iget-byte p1, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->c:B

    .line 47
    .line 48
    or-int/lit8 p1, p1, 0x2

    .line 49
    .line 50
    int-to-byte p1, p1

    .line 51
    iput-byte p1, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->c:B

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    if-ne p1, v2, :cond_1

    .line 55
    .line 56
    iget-object v9, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->a:Ljava/lang/String;

    .line 57
    .line 58
    if-nez v9, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v4, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult;

    .line 62
    .line 63
    iget-wide v5, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->b:J

    .line 64
    .line 65
    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult;-><init>(JJLjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/google/firebase/installations/GetAuthTokenListener;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 69
    .line 70
    invoke-virtual {p0, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return v3

    .line 74
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object p1, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->a:Ljava/lang/String;

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    const-string p1, " token"

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-byte p1, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->c:B

    .line 89
    .line 90
    and-int/2addr p1, v3

    .line 91
    if-nez p1, :cond_3

    .line 92
    .line 93
    const-string p1, " tokenExpirationTimestamp"

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-byte p1, v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->c:B

    .line 99
    .line 100
    and-int/lit8 p1, p1, 0x2

    .line 101
    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    const-string p1, " tokenCreationTimestamp"

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_4
    const-string p1, "Missing required properties:"

    .line 110
    .line 111
    invoke-static {p0, p1}, Lfe;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return v1

    .line 115
    :cond_5
    const-string p0, "Null token"

    .line 116
    .line 117
    invoke-static {p0}, Lio/sentry/d;->f(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    return v1
.end method
