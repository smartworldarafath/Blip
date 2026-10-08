.class public abstract Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    if-ge v4, v2, :cond_4

    .line 21
    .line 22
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    instance-of v6, v5, Landroidx/compose/runtime/Anchor;

    .line 27
    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v3, p2, v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    instance-of v6, v5, Landroidx/compose/runtime/composer/GroupSourceInformation;

    .line 41
    .line 42
    if-eqz v6, :cond_3

    .line 43
    .line 44
    move-object v6, v5

    .line 45
    check-cast v6, Landroidx/compose/runtime/composer/GroupSourceInformation;

    .line 46
    .line 47
    invoke-virtual {p0, p1, v6, p3}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, v3, p2, v5}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string p0, "Unexpected child source info "

    .line 61
    .line 62
    invoke-static {v5, p0}, Lf7;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    return v3
.end method

.method public final b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    invoke-direct {p2, p1, p3, p3}, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;-><init>(ILandroidx/compose/runtime/tooling/SourceInformation;Ljava/lang/Integer;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final c(ILjava/lang/Object;Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Ljava/lang/Object;)V
    .locals 0

    .line 1
    sget-object p4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 2
    .line 3
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p1, p3, p2}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;->b(ILandroidx/compose/runtime/composer/GroupSourceInformation;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
