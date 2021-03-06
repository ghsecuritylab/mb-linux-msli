# This script was automatically generated from 
#  http://www.gentoo.org/security/en/glsa/glsa-200507-24.xml
# It is released under the Nessus Script Licence.
# The messages are release under the Creative Commons - Attribution /
# Share Alike license. See http://creativecommons.org/licenses/by-sa/2.0/
#
# Avisory is copyright 2001-2005 Gentoo Foundation, Inc.
# GLSA2nasl Convertor is copyright 2004 Michel Arboi <mikhail@nessus.org>

if (! defined_func('bn_random')) exit(0);

if (description)
{
 script_id(19326);
 script_version("$Revision: 1.1 $");
 script_xref(name: "GLSA", value: "200507-24");

 desc = 'The remote host is affected by the vulnerability described in GLSA-200507-24
(Mozilla Suite: Multiple vulnerabilities)


    The following vulnerabilities were found and fixed in the Mozilla
    Suite:
    "moz_bug_r_a4" and "shutdown" discovered that the
    Mozilla Suite was improperly cloning base objects (MFSA 2005-56).
    "moz_bug_r_a4" reported that the suite failed to validate XHTML DOM
    nodes properly (MFSA 2005-55).
    Secunia reported that alerts
    and prompts scripts are presented with the generic title [JavaScript
    Application] which could lead to tricking a user (MFSA 2005-54).
    Andreas Sandblad of Secunia reported that top.focus() can be called
    in the context of a child frame even if the framing page comes from a
    different origin and has overridden the focus() routine (MFSA
    2005-52).
    Secunia reported that a frame-injection spoofing bug
    which was fixed in earlier versions, was accidently bypassed in Mozilla
    Suite 1.7.7 (MFSA 2005-51).
    "shutdown" reported that
    InstallVersion.compareTo() might be exploitable. When it gets an object
    rather than a string, the browser would generally crash with an access
    violation (MFSA 2005-50).
    Matthew Mastracci reported that by
    forcing a page navigation immediately after calling the install method
    can end up running in the context of the new page selected by the
    attacker (MFSA 2005-48).
    "moz_bug_r_a4" reported that XBL
    scripts run even when Javascript is disabled (MFSA 2005-46).
    Omar Khan, Jochen, "shutdown" and Matthew Mastracci reported that the
    Mozilla Suite incorrectly distinguished between true events like mouse
    clicks or keystrokes and synthetic events generated by a web content
    (MFSA 2005-45).
  
Impact

    A remote attacker could craft malicious web pages that would
    leverage these issues to inject and execute arbitrary javascript code
    with elevated privileges, steal cookies or other information from web
    pages, or spoof content.
  
Workaround

    There is no known workaround at this time.
  
References:
    http://www.mozilla.org/projects/security/known-vulnerabilities.html#Mozilla


Solution: 
    All Mozilla Suite users should upgrade to the latest version:
    # emerge --sync
    # emerge --ask --oneshot --verbose ">=www-client/mozilla-1.7.10"
    All Mozilla Suite binary users should upgrade to the latest
    version:
    # emerge --sync
    # emerge --ask --oneshot --verbose ">=www-client/mozilla-bin-1.7.10"
  

Risk factor : Medium
';
 script_description(english: desc);
 script_copyright(english: "(C) 2005 Michel Arboi <mikhail@nessus.org>");
 script_name(english: "[GLSA-200507-24] Mozilla Suite: Multiple vulnerabilities");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Gentoo Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys('Host/Gentoo/qpkg-list');
 script_summary(english: 'Mozilla Suite: Multiple vulnerabilities');
 exit(0);
}

include('qpkg.inc');
if (qpkg_check(package: "www-client/mozilla", unaffected: make_list("ge 1.7.10"), vulnerable: make_list("lt 1.7.10")
)) { security_warning(0); exit(0); }
if (qpkg_check(package: "www-client/mozilla-bin", unaffected: make_list("ge 1.7.10"), vulnerable: make_list("lt 1.7.10")
)) { security_warning(0); exit(0); }
