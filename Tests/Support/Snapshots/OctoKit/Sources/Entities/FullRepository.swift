// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct FullRepository: Codable {
    /// Example: 1296269
    public var id: Int
    /// Example: "MDEwOlJlcG9zaXRvcnkxMjk2MjY5"
    public var nodeID: String
    /// Example: "Hello-World"
    public var name: String
    /// Example: "octocat/Hello-World"
    public var fullName: String
    /// Simple User
    public var owner: SimpleUser
    public var isPrivate: Bool
    /// Example: "https://github.com/octocat/Hello-World"
    public var htmlURL: URL
    /// Example: "This your first repo!"
    public var description: String?
    public var isFork: Bool
    /// Example: "https://api.github.com/repos/octocat/Hello-World"
    public var url: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/{archive_format}{/ref}"
    public var archiveURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/assignees{/user}"
    public var assigneesURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/git/blobs{/sha}"
    public var blobsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/branches{/branch}"
    public var branchesURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/collaborators{/collaborator}"
    public var collaboratorsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/comments{/number}"
    public var commentsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/commits{/sha}"
    public var commitsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/compare/{base}...{head}"
    public var compareURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/contents/{+path}"
    public var contentsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/contributors"
    public var contributorsURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/deployments"
    public var deploymentsURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/downloads"
    public var downloadsURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/events"
    public var eventsURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/forks"
    public var forksURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/git/commits{/sha}"
    public var gitCommitsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/git/refs{/sha}"
    public var gitRefsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/git/tags{/sha}"
    public var gitTagsURL: String
    /// Example: "git:github.com/octocat/Hello-World.git"
    public var gitURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/issues/comments{/number}"
    public var issueCommentURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/issues/events{/number}"
    public var issueEventsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/issues{/number}"
    public var issuesURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/keys{/key_id}"
    public var keysURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/labels{/name}"
    public var labelsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/languages"
    public var languagesURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/merges"
    public var mergesURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/milestones{/number}"
    public var milestonesURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/notifications{?since,all,participating}"
    public var notificationsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/pulls{/number}"
    public var pullsURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/releases{/id}"
    public var releasesURL: String
    /// Example: "git@github.com:octocat/Hello-World.git"
    public var sshURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/stargazers"
    public var stargazersURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/statuses/{sha}"
    public var statusesURL: String
    /// Example: "http://api.github.com/repos/octocat/Hello-World/subscribers"
    public var subscribersURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/subscription"
    public var subscriptionURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/tags"
    public var tagsURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/teams"
    public var teamsURL: URL
    /// Example: "http://api.github.com/repos/octocat/Hello-World/git/trees{/sha}"
    public var treesURL: String
    /// Example: "https://github.com/octocat/Hello-World.git"
    public var cloneURL: String
    /// Example: "git:git.example.com/octocat/Hello-World"
    public var mirrorURL: URL?
    /// Example: "http://api.github.com/repos/octocat/Hello-World/hooks"
    public var hooksURL: URL
    /// Example: "https://svn.github.com/octocat/Hello-World"
    public var svnURL: URL
    /// Example: "https://github.com"
    public var homepage: URL?
    public var language: String?
    public var forksCount: Int
    /// Example: 80
    public var stargazersCount: Int
    /// Example: 80
    public var watchersCount: Int
    /// Example: 108
    public var size: Int
    /// Example: "master"
    public var defaultBranch: String
    public var openIssuesCount: Int
    /// Example: true
    public var isTemplate: Bool?
    /// Example: ["octocat", "atom", "electron", "API"]
    public var topics: [String]?
    /// Example: true
    public var hasIssues: Bool
    /// Example: true
    public var hasProjects: Bool
    /// Example: true
    public var hasWiki: Bool
    public var hasPages: Bool
    /// Example: true
    public var hasDownloads: Bool
    public var isArchived: Bool
    /// Returns whether or not this repository disabled.
    public var isDisabled: Bool
    /// The repository visibility: public, private, or internal.
    ///
    /// Example: "public"
    public var visibility: String?
    /// Example: "2011-01-26T19:06:43Z"
    public var pushedAt: Date
    /// Example: "2011-01-26T19:01:12Z"
    public var createdAt: Date
    /// Example: "2011-01-26T19:14:43Z"
    public var updatedAt: Date
    public var permissions: Permissions?
    /// Example: true
    public var allowRebaseMerge: Bool?
    /// Repository
    ///
    /// A git repository
    public var templateRepository: Repository?
    public var tempCloneToken: String?
    /// Example: true
    public var allowSquashMerge: Bool?
    /// Example: false
    public var allowAutoMerge: Bool?
    /// Example: false
    public var deleteBranchOnMerge: Bool?
    /// Example: true
    public var allowMergeCommit: Bool?
    /// Example: true
    public var allowForking: Bool?
    /// Example: 42
    public var subscribersCount: Int
    public var networkCount: Int
    /// License Simple
    public var license: LicenseSimple?
    /// Simple User
    public var organization: SimpleUser?
    /// Repository
    ///
    /// A git repository
    public var parent: Repository?
    /// Repository
    ///
    /// A git repository
    public var source: Repository?
    public var forks: Int
    public var masterBranch: String?
    public var openIssues: Int
    public var watchers: Int
    /// Whether anonymous git access is allowed.
    public var isAnonymousAccessEnabled: Bool?
    /// Code Of Conduct Simple
    ///
    /// Code of Conduct Simple
    public var codeOfConduct: CodeOfConductSimple?
    public var securityAndAnalysis: SecurityAndAnalysis?

    public struct Permissions: Codable {
        public var isAdmin: Bool
        public var isMaintain: Bool?
        public var isPush: Bool
        public var isTriage: Bool?
        public var isPull: Bool

        public init(isAdmin: Bool, isMaintain: Bool? = nil, isPush: Bool, isTriage: Bool? = nil, isPull: Bool) {
            self.isAdmin = isAdmin
            self.isMaintain = isMaintain
            self.isPush = isPush
            self.isTriage = isTriage
            self.isPull = isPull
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.isAdmin = try values.decode(Bool.self, forKey: "admin")
            self.isMaintain = try values.decodeIfPresent(Bool.self, forKey: "maintain")
            self.isPush = try values.decode(Bool.self, forKey: "push")
            self.isTriage = try values.decodeIfPresent(Bool.self, forKey: "triage")
            self.isPull = try values.decode(Bool.self, forKey: "pull")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(isAdmin, forKey: "admin")
            try values.encodeIfPresent(isMaintain, forKey: "maintain")
            try values.encode(isPush, forKey: "push")
            try values.encodeIfPresent(isTriage, forKey: "triage")
            try values.encode(isPull, forKey: "pull")
        }
    }

    public struct SecurityAndAnalysis: Codable {
        public var advancedSecurity: AdvancedSecurity?
        public var secretScanning: SecretScanning?

        public struct AdvancedSecurity: Codable {
            public var status: Status?

            public enum Status: String, Codable, CaseIterable {
                case enabled
                case disabled
            }

            public init(status: Status? = nil) {
                self.status = status
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.status = try values.decodeIfPresent(Status.self, forKey: "status")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(status, forKey: "status")
            }
        }

        public struct SecretScanning: Codable {
            public var status: Status?

            public enum Status: String, Codable, CaseIterable {
                case enabled
                case disabled
            }

            public init(status: Status? = nil) {
                self.status = status
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.status = try values.decodeIfPresent(Status.self, forKey: "status")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(status, forKey: "status")
            }
        }

        public init(advancedSecurity: AdvancedSecurity? = nil, secretScanning: SecretScanning? = nil) {
            self.advancedSecurity = advancedSecurity
            self.secretScanning = secretScanning
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.advancedSecurity = try values.decodeIfPresent(AdvancedSecurity.self, forKey: "advanced_security")
            self.secretScanning = try values.decodeIfPresent(SecretScanning.self, forKey: "secret_scanning")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(advancedSecurity, forKey: "advanced_security")
            try values.encodeIfPresent(secretScanning, forKey: "secret_scanning")
        }
    }

    public init(id: Int, nodeID: String, name: String, fullName: String, owner: SimpleUser, isPrivate: Bool, htmlURL: URL, description: String? = nil, isFork: Bool, url: URL, archiveURL: String, assigneesURL: String, blobsURL: String, branchesURL: String, collaboratorsURL: String, commentsURL: String, commitsURL: String, compareURL: String, contentsURL: String, contributorsURL: URL, deploymentsURL: URL, downloadsURL: URL, eventsURL: URL, forksURL: URL, gitCommitsURL: String, gitRefsURL: String, gitTagsURL: String, gitURL: String, issueCommentURL: String, issueEventsURL: String, issuesURL: String, keysURL: String, labelsURL: String, languagesURL: URL, mergesURL: URL, milestonesURL: String, notificationsURL: String, pullsURL: String, releasesURL: String, sshURL: String, stargazersURL: URL, statusesURL: String, subscribersURL: URL, subscriptionURL: URL, tagsURL: URL, teamsURL: URL, treesURL: String, cloneURL: String, mirrorURL: URL? = nil, hooksURL: URL, svnURL: URL, homepage: URL? = nil, language: String? = nil, forksCount: Int, stargazersCount: Int, watchersCount: Int, size: Int, defaultBranch: String, openIssuesCount: Int, isTemplate: Bool? = nil, topics: [String]? = nil, hasIssues: Bool, hasProjects: Bool, hasWiki: Bool, hasPages: Bool, hasDownloads: Bool, isArchived: Bool, isDisabled: Bool, visibility: String? = nil, pushedAt: Date, createdAt: Date, updatedAt: Date, permissions: Permissions? = nil, allowRebaseMerge: Bool? = nil, templateRepository: Repository? = nil, tempCloneToken: String? = nil, allowSquashMerge: Bool? = nil, allowAutoMerge: Bool? = nil, deleteBranchOnMerge: Bool? = nil, allowMergeCommit: Bool? = nil, allowForking: Bool? = nil, subscribersCount: Int, networkCount: Int, license: LicenseSimple? = nil, organization: SimpleUser? = nil, parent: Repository? = nil, source: Repository? = nil, forks: Int, masterBranch: String? = nil, openIssues: Int, watchers: Int, isAnonymousAccessEnabled: Bool? = true, codeOfConduct: CodeOfConductSimple? = nil, securityAndAnalysis: SecurityAndAnalysis? = nil) {
        self.id = id
        self.nodeID = nodeID
        self.name = name
        self.fullName = fullName
        self.owner = owner
        self.isPrivate = isPrivate
        self.htmlURL = htmlURL
        self.description = description
        self.isFork = isFork
        self.url = url
        self.archiveURL = archiveURL
        self.assigneesURL = assigneesURL
        self.blobsURL = blobsURL
        self.branchesURL = branchesURL
        self.collaboratorsURL = collaboratorsURL
        self.commentsURL = commentsURL
        self.commitsURL = commitsURL
        self.compareURL = compareURL
        self.contentsURL = contentsURL
        self.contributorsURL = contributorsURL
        self.deploymentsURL = deploymentsURL
        self.downloadsURL = downloadsURL
        self.eventsURL = eventsURL
        self.forksURL = forksURL
        self.gitCommitsURL = gitCommitsURL
        self.gitRefsURL = gitRefsURL
        self.gitTagsURL = gitTagsURL
        self.gitURL = gitURL
        self.issueCommentURL = issueCommentURL
        self.issueEventsURL = issueEventsURL
        self.issuesURL = issuesURL
        self.keysURL = keysURL
        self.labelsURL = labelsURL
        self.languagesURL = languagesURL
        self.mergesURL = mergesURL
        self.milestonesURL = milestonesURL
        self.notificationsURL = notificationsURL
        self.pullsURL = pullsURL
        self.releasesURL = releasesURL
        self.sshURL = sshURL
        self.stargazersURL = stargazersURL
        self.statusesURL = statusesURL
        self.subscribersURL = subscribersURL
        self.subscriptionURL = subscriptionURL
        self.tagsURL = tagsURL
        self.teamsURL = teamsURL
        self.treesURL = treesURL
        self.cloneURL = cloneURL
        self.mirrorURL = mirrorURL
        self.hooksURL = hooksURL
        self.svnURL = svnURL
        self.homepage = homepage
        self.language = language
        self.forksCount = forksCount
        self.stargazersCount = stargazersCount
        self.watchersCount = watchersCount
        self.size = size
        self.defaultBranch = defaultBranch
        self.openIssuesCount = openIssuesCount
        self.isTemplate = isTemplate
        self.topics = topics
        self.hasIssues = hasIssues
        self.hasProjects = hasProjects
        self.hasWiki = hasWiki
        self.hasPages = hasPages
        self.hasDownloads = hasDownloads
        self.isArchived = isArchived
        self.isDisabled = isDisabled
        self.visibility = visibility
        self.pushedAt = pushedAt
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.permissions = permissions
        self.allowRebaseMerge = allowRebaseMerge
        self.templateRepository = templateRepository
        self.tempCloneToken = tempCloneToken
        self.allowSquashMerge = allowSquashMerge
        self.allowAutoMerge = allowAutoMerge
        self.deleteBranchOnMerge = deleteBranchOnMerge
        self.allowMergeCommit = allowMergeCommit
        self.allowForking = allowForking
        self.subscribersCount = subscribersCount
        self.networkCount = networkCount
        self.license = license
        self.organization = organization
        self.parent = parent
        self.source = source
        self.forks = forks
        self.masterBranch = masterBranch
        self.openIssues = openIssues
        self.watchers = watchers
        self.isAnonymousAccessEnabled = isAnonymousAccessEnabled
        self.codeOfConduct = codeOfConduct
        self.securityAndAnalysis = securityAndAnalysis
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.name = try values.decode(String.self, forKey: "name")
        self.fullName = try values.decode(String.self, forKey: "full_name")
        self.owner = try values.decode(SimpleUser.self, forKey: "owner")
        self.isPrivate = try values.decode(Bool.self, forKey: "private")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.isFork = try values.decode(Bool.self, forKey: "fork")
        self.url = try values.decode(URL.self, forKey: "url")
        self.archiveURL = try values.decode(String.self, forKey: "archive_url")
        self.assigneesURL = try values.decode(String.self, forKey: "assignees_url")
        self.blobsURL = try values.decode(String.self, forKey: "blobs_url")
        self.branchesURL = try values.decode(String.self, forKey: "branches_url")
        self.collaboratorsURL = try values.decode(String.self, forKey: "collaborators_url")
        self.commentsURL = try values.decode(String.self, forKey: "comments_url")
        self.commitsURL = try values.decode(String.self, forKey: "commits_url")
        self.compareURL = try values.decode(String.self, forKey: "compare_url")
        self.contentsURL = try values.decode(String.self, forKey: "contents_url")
        self.contributorsURL = try values.decode(URL.self, forKey: "contributors_url")
        self.deploymentsURL = try values.decode(URL.self, forKey: "deployments_url")
        self.downloadsURL = try values.decode(URL.self, forKey: "downloads_url")
        self.eventsURL = try values.decode(URL.self, forKey: "events_url")
        self.forksURL = try values.decode(URL.self, forKey: "forks_url")
        self.gitCommitsURL = try values.decode(String.self, forKey: "git_commits_url")
        self.gitRefsURL = try values.decode(String.self, forKey: "git_refs_url")
        self.gitTagsURL = try values.decode(String.self, forKey: "git_tags_url")
        self.gitURL = try values.decode(String.self, forKey: "git_url")
        self.issueCommentURL = try values.decode(String.self, forKey: "issue_comment_url")
        self.issueEventsURL = try values.decode(String.self, forKey: "issue_events_url")
        self.issuesURL = try values.decode(String.self, forKey: "issues_url")
        self.keysURL = try values.decode(String.self, forKey: "keys_url")
        self.labelsURL = try values.decode(String.self, forKey: "labels_url")
        self.languagesURL = try values.decode(URL.self, forKey: "languages_url")
        self.mergesURL = try values.decode(URL.self, forKey: "merges_url")
        self.milestonesURL = try values.decode(String.self, forKey: "milestones_url")
        self.notificationsURL = try values.decode(String.self, forKey: "notifications_url")
        self.pullsURL = try values.decode(String.self, forKey: "pulls_url")
        self.releasesURL = try values.decode(String.self, forKey: "releases_url")
        self.sshURL = try values.decode(String.self, forKey: "ssh_url")
        self.stargazersURL = try values.decode(URL.self, forKey: "stargazers_url")
        self.statusesURL = try values.decode(String.self, forKey: "statuses_url")
        self.subscribersURL = try values.decode(URL.self, forKey: "subscribers_url")
        self.subscriptionURL = try values.decode(URL.self, forKey: "subscription_url")
        self.tagsURL = try values.decode(URL.self, forKey: "tags_url")
        self.teamsURL = try values.decode(URL.self, forKey: "teams_url")
        self.treesURL = try values.decode(String.self, forKey: "trees_url")
        self.cloneURL = try values.decode(String.self, forKey: "clone_url")
        self.mirrorURL = try values.decodeIfPresent(URL.self, forKey: "mirror_url")
        self.hooksURL = try values.decode(URL.self, forKey: "hooks_url")
        self.svnURL = try values.decode(URL.self, forKey: "svn_url")
        self.homepage = try values.decodeIfPresent(URL.self, forKey: "homepage")
        self.language = try values.decodeIfPresent(String.self, forKey: "language")
        self.forksCount = try values.decode(Int.self, forKey: "forks_count")
        self.stargazersCount = try values.decode(Int.self, forKey: "stargazers_count")
        self.watchersCount = try values.decode(Int.self, forKey: "watchers_count")
        self.size = try values.decode(Int.self, forKey: "size")
        self.defaultBranch = try values.decode(String.self, forKey: "default_branch")
        self.openIssuesCount = try values.decode(Int.self, forKey: "open_issues_count")
        self.isTemplate = try values.decodeIfPresent(Bool.self, forKey: "is_template")
        self.topics = try values.decodeIfPresent([String].self, forKey: "topics")
        self.hasIssues = try values.decode(Bool.self, forKey: "has_issues")
        self.hasProjects = try values.decode(Bool.self, forKey: "has_projects")
        self.hasWiki = try values.decode(Bool.self, forKey: "has_wiki")
        self.hasPages = try values.decode(Bool.self, forKey: "has_pages")
        self.hasDownloads = try values.decode(Bool.self, forKey: "has_downloads")
        self.isArchived = try values.decode(Bool.self, forKey: "archived")
        self.isDisabled = try values.decode(Bool.self, forKey: "disabled")
        self.visibility = try values.decodeIfPresent(String.self, forKey: "visibility")
        self.pushedAt = try values.decode(Date.self, forKey: "pushed_at")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.permissions = try values.decodeIfPresent(Permissions.self, forKey: "permissions")
        self.allowRebaseMerge = try values.decodeIfPresent(Bool.self, forKey: "allow_rebase_merge")
        self.templateRepository = try values.decodeIfPresent(Repository.self, forKey: "template_repository")
        self.tempCloneToken = try values.decodeIfPresent(String.self, forKey: "temp_clone_token")
        self.allowSquashMerge = try values.decodeIfPresent(Bool.self, forKey: "allow_squash_merge")
        self.allowAutoMerge = try values.decodeIfPresent(Bool.self, forKey: "allow_auto_merge")
        self.deleteBranchOnMerge = try values.decodeIfPresent(Bool.self, forKey: "delete_branch_on_merge")
        self.allowMergeCommit = try values.decodeIfPresent(Bool.self, forKey: "allow_merge_commit")
        self.allowForking = try values.decodeIfPresent(Bool.self, forKey: "allow_forking")
        self.subscribersCount = try values.decode(Int.self, forKey: "subscribers_count")
        self.networkCount = try values.decode(Int.self, forKey: "network_count")
        self.license = try values.decodeIfPresent(LicenseSimple.self, forKey: "license")
        self.organization = try values.decodeIfPresent(SimpleUser.self, forKey: "organization")
        self.parent = try values.decodeIfPresent(Repository.self, forKey: "parent")
        self.source = try values.decodeIfPresent(Repository.self, forKey: "source")
        self.forks = try values.decode(Int.self, forKey: "forks")
        self.masterBranch = try values.decodeIfPresent(String.self, forKey: "master_branch")
        self.openIssues = try values.decode(Int.self, forKey: "open_issues")
        self.watchers = try values.decode(Int.self, forKey: "watchers")
        self.isAnonymousAccessEnabled = try values.decodeIfPresent(Bool.self, forKey: "anonymous_access_enabled")
        self.codeOfConduct = try values.decodeIfPresent(CodeOfConductSimple.self, forKey: "code_of_conduct")
        self.securityAndAnalysis = try values.decodeIfPresent(SecurityAndAnalysis.self, forKey: "security_and_analysis")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(name, forKey: "name")
        try values.encode(fullName, forKey: "full_name")
        try values.encode(owner, forKey: "owner")
        try values.encode(isPrivate, forKey: "private")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encode(isFork, forKey: "fork")
        try values.encode(url, forKey: "url")
        try values.encode(archiveURL, forKey: "archive_url")
        try values.encode(assigneesURL, forKey: "assignees_url")
        try values.encode(blobsURL, forKey: "blobs_url")
        try values.encode(branchesURL, forKey: "branches_url")
        try values.encode(collaboratorsURL, forKey: "collaborators_url")
        try values.encode(commentsURL, forKey: "comments_url")
        try values.encode(commitsURL, forKey: "commits_url")
        try values.encode(compareURL, forKey: "compare_url")
        try values.encode(contentsURL, forKey: "contents_url")
        try values.encode(contributorsURL, forKey: "contributors_url")
        try values.encode(deploymentsURL, forKey: "deployments_url")
        try values.encode(downloadsURL, forKey: "downloads_url")
        try values.encode(eventsURL, forKey: "events_url")
        try values.encode(forksURL, forKey: "forks_url")
        try values.encode(gitCommitsURL, forKey: "git_commits_url")
        try values.encode(gitRefsURL, forKey: "git_refs_url")
        try values.encode(gitTagsURL, forKey: "git_tags_url")
        try values.encode(gitURL, forKey: "git_url")
        try values.encode(issueCommentURL, forKey: "issue_comment_url")
        try values.encode(issueEventsURL, forKey: "issue_events_url")
        try values.encode(issuesURL, forKey: "issues_url")
        try values.encode(keysURL, forKey: "keys_url")
        try values.encode(labelsURL, forKey: "labels_url")
        try values.encode(languagesURL, forKey: "languages_url")
        try values.encode(mergesURL, forKey: "merges_url")
        try values.encode(milestonesURL, forKey: "milestones_url")
        try values.encode(notificationsURL, forKey: "notifications_url")
        try values.encode(pullsURL, forKey: "pulls_url")
        try values.encode(releasesURL, forKey: "releases_url")
        try values.encode(sshURL, forKey: "ssh_url")
        try values.encode(stargazersURL, forKey: "stargazers_url")
        try values.encode(statusesURL, forKey: "statuses_url")
        try values.encode(subscribersURL, forKey: "subscribers_url")
        try values.encode(subscriptionURL, forKey: "subscription_url")
        try values.encode(tagsURL, forKey: "tags_url")
        try values.encode(teamsURL, forKey: "teams_url")
        try values.encode(treesURL, forKey: "trees_url")
        try values.encode(cloneURL, forKey: "clone_url")
        try values.encodeIfPresent(mirrorURL, forKey: "mirror_url")
        try values.encode(hooksURL, forKey: "hooks_url")
        try values.encode(svnURL, forKey: "svn_url")
        try values.encodeIfPresent(homepage, forKey: "homepage")
        try values.encodeIfPresent(language, forKey: "language")
        try values.encode(forksCount, forKey: "forks_count")
        try values.encode(stargazersCount, forKey: "stargazers_count")
        try values.encode(watchersCount, forKey: "watchers_count")
        try values.encode(size, forKey: "size")
        try values.encode(defaultBranch, forKey: "default_branch")
        try values.encode(openIssuesCount, forKey: "open_issues_count")
        try values.encodeIfPresent(isTemplate, forKey: "is_template")
        try values.encodeIfPresent(topics, forKey: "topics")
        try values.encode(hasIssues, forKey: "has_issues")
        try values.encode(hasProjects, forKey: "has_projects")
        try values.encode(hasWiki, forKey: "has_wiki")
        try values.encode(hasPages, forKey: "has_pages")
        try values.encode(hasDownloads, forKey: "has_downloads")
        try values.encode(isArchived, forKey: "archived")
        try values.encode(isDisabled, forKey: "disabled")
        try values.encodeIfPresent(visibility, forKey: "visibility")
        try values.encode(pushedAt, forKey: "pushed_at")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encodeIfPresent(permissions, forKey: "permissions")
        try values.encodeIfPresent(allowRebaseMerge, forKey: "allow_rebase_merge")
        try values.encodeIfPresent(templateRepository, forKey: "template_repository")
        try values.encodeIfPresent(tempCloneToken, forKey: "temp_clone_token")
        try values.encodeIfPresent(allowSquashMerge, forKey: "allow_squash_merge")
        try values.encodeIfPresent(allowAutoMerge, forKey: "allow_auto_merge")
        try values.encodeIfPresent(deleteBranchOnMerge, forKey: "delete_branch_on_merge")
        try values.encodeIfPresent(allowMergeCommit, forKey: "allow_merge_commit")
        try values.encodeIfPresent(allowForking, forKey: "allow_forking")
        try values.encode(subscribersCount, forKey: "subscribers_count")
        try values.encode(networkCount, forKey: "network_count")
        try values.encodeIfPresent(license, forKey: "license")
        try values.encodeIfPresent(organization, forKey: "organization")
        try values.encodeIfPresent(parent, forKey: "parent")
        try values.encodeIfPresent(source, forKey: "source")
        try values.encode(forks, forKey: "forks")
        try values.encodeIfPresent(masterBranch, forKey: "master_branch")
        try values.encode(openIssues, forKey: "open_issues")
        try values.encode(watchers, forKey: "watchers")
        try values.encodeIfPresent(isAnonymousAccessEnabled, forKey: "anonymous_access_enabled")
        try values.encodeIfPresent(codeOfConduct, forKey: "code_of_conduct")
        try values.encodeIfPresent(securityAndAnalysis, forKey: "security_and_analysis")
    }
}
