.class public abstract Lcom/google/firebase/installations/local/PersistedInstallationEntry;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    iput-wide v1, v0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->f:J

    .line 9
    .line 10
    iget-byte v3, v0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->h:B

    .line 11
    .line 12
    or-int/lit8 v3, v3, 0x2

    .line 13
    .line 14
    int-to-byte v3, v3

    .line 15
    sget-object v4, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->j:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 16
    .line 17
    iput-object v4, v0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 18
    .line 19
    iput-wide v1, v0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->e:J

    .line 20
    .line 21
    or-int/lit8 v1, v3, 0x1

    .line 22
    .line 23
    int-to-byte v1, v1

    .line 24
    iput-byte v1, v0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->h:B

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->a()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()J
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()J
.end method

.method public final f()Z
    .locals 1

    .line 1
    check-cast p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->c:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 4
    .line 5
    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->n:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final g()Z
    .locals 1

    .line 1
    check-cast p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;

    .line 2
    .line 3
    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->k:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->c:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->j:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final h()Z
    .locals 1

    .line 1
    check-cast p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->c:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 4
    .line 5
    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->m:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final i()Z
    .locals 1

    .line 1
    check-cast p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->c:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 4
    .line 5
    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->l:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final j()Z
    .locals 1

    .line 1
    check-cast p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->c:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 4
    .line 5
    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->j:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public abstract k()Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;
.end method

.method public final l(JJLjava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->k()Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->e:J

    .line 10
    .line 11
    iget-byte p1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->h:B

    .line 12
    .line 13
    or-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    int-to-byte p1, p1

    .line 16
    iput-wide p3, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->f:J

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x2

    .line 19
    .line 20
    int-to-byte p1, p1

    .line 21
    iput-byte p1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->h:B

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->a()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final m()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->k()Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;

    .line 6
    .line 7
    const-string v0, "BAD CONFIG"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->g:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->n:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->a()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final n()Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->k()Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;

    .line 6
    .line 7
    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->k:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->a()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->k()Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->a:Ljava/lang/String;

    .line 8
    .line 9
    sget-object p1, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->m:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->c:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->d:Ljava/lang/String;

    .line 16
    .line 17
    iput-wide p6, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->e:J

    .line 18
    .line 19
    iget-byte p1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->h:B

    .line 20
    .line 21
    or-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    int-to-byte p1, p1

    .line 24
    iput-wide p3, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->f:J

    .line 25
    .line 26
    or-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    int-to-byte p1, p1

    .line 29
    iput-byte p1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->h:B

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->a()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final p(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->k()Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->a:Ljava/lang/String;

    .line 8
    .line 9
    sget-object p1, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->l:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;->a()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
