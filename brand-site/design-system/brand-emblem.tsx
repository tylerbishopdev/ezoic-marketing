import * as React from "react"

export interface BrandEmblemProps extends React.SVGProps<SVGSVGElement> { }

/**
 * The approved Ezoic emblem mark — exact vector path from the canonical
 * asset catalog (/brand/emblem-white.svg). Recolors via `currentColor`,
 * so wrap it with a text-* utility (e.g. `text-primary`) to set its color.
 *
 * Do not edit this path. Do not use this component to build a lockup or
 * wordmark — the wordmark is never typeset (brand constraint 7). For any
 * lockup/wordmark placement, use next/image with the approved raster files
 * (lockup-dark.png / lockup-light.png) from the brand asset catalog.
 */
export function BrandEmblem({ ...props }: BrandEmblemProps) {
  return (
    <svg viewBox="0 0 128 127" fill="none" xmlns="http://www.w3.org/2000/svg" {...props}>
      <path
        fillRule="evenodd"
        clipRule="evenodd"
        fill="currentColor"
        d="M64 127C99.3462 127 128 98.5701 128 63.5C128 28.4299 99.3462 0 64 0C28.6538 0 0 28.4299 0 63.5C0 98.5701 28.6538 127 64 127ZM64.0098 112.569C91.3227 112.569 113.464 90.6002 113.464 63.5006C113.464 59.8043 113.052 56.2036 112.272 52.741L70.6551 81.6759C70.6775 81.948 70.6889 82.2233 70.6889 82.5012C70.6889 88.0327 66.1695 92.5168 60.5945 92.5168C55.0194 92.5168 50.5 88.0327 50.5 82.5012C50.5 76.9697 55.0194 72.4856 60.5945 72.4856C62.0911 72.4856 63.5116 72.8088 64.7891 73.3886L108.842 42.7597C100.965 26.0267 83.852 14.4324 64.0098 14.4324C36.6968 14.4324 14.5552 36.4009 14.5552 63.5006C14.5552 67.1388 14.9543 70.6845 15.7114 74.097L57.3863 45.2897C57.3545 44.9662 57.3383 44.6383 57.3383 44.3065C57.3383 38.7751 61.8577 34.2909 67.4327 34.2909C73.0077 34.2909 77.5272 38.7751 77.5272 44.3065C77.5272 49.838 73.0077 54.3221 67.4327 54.3221C65.972 54.3221 64.5838 54.0143 63.3303 53.4604L19.0853 84.0444C26.9204 100.883 44.0897 112.569 64.0098 112.569Z"
      />
    </svg>
  )
}
