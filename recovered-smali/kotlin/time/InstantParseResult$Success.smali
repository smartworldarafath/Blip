.class public final Lkotlin/time/InstantParseResult$Success;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/time/InstantParseResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/InstantParseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lkotlin/time/InstantParseResult$Success;->a:J

    .line 5
    .line 6
    iput p1, p0, Lkotlin/time/InstantParseResult$Success;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toInstant()Lkotlin/time/Instant;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/time/Instant;->l:Lkotlin/time/Instant;

    .line 2
    .line 3
    iget-wide v0, v0, Lkotlin/time/Instant;->j:J

    .line 4
    .line 5
    iget-wide v2, p0, Lkotlin/time/InstantParseResult$Success;->a:J

    .line 6
    .line 7
    cmp-long v0, v2, v0

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lkotlin/time/Instant;->m:Lkotlin/time/Instant;

    .line 12
    .line 13
    iget-wide v0, v0, Lkotlin/time/Instant;->j:J

    .line 14
    .line 15
    cmp-long v0, v2, v0

    .line 16
    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    iget p0, p0, Lkotlin/time/InstantParseResult$Success;->b:I

    .line 20
    .line 21
    invoke-static {p0, v2, v3}, Lkotlin/time/Instant$Companion;->a(IJ)Lkotlin/time/Instant;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance p0, Lkotlin/time/InstantFormatException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "The parsed date is outside the range representable by Instant (Unix epoch second "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x29

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method
